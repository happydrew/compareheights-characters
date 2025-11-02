const fs = require('fs');
const path = require('path');

// 常见颜色数组
const COMMON_COLORS = ['#3B82F6', '#EF4444', '#10B981', '#F59E0B', '#8B5CF6', '#EC4899', '#000000'];

let colorIndex = 0;
// 获取随机颜色
function getRandomColor() {
    return COMMON_COLORS[colorIndex++ % COMMON_COLORS.length];
}

const DEFAULT_CATEGORIES = [
    {
        id: 1,
        path: 'generic',
        name: 'Generic Human',
        pid: null,
        children: [
            {
                id: 110,
                path: 'generic_people',
                name: 'Generic People',
                pid: null
            },
            {
                id: 120,
                path: 'people',
                name: 'People',
                pid: null
            },
            {
                id: 130,
                path: 'old_people',
                name: 'Old People',
                pid: null
            },
            {
                id: 140,
                path: 'baby',
                name: 'Baby',
                pid: null
            },
            {
                id: 150,
                path: 'children',
                name: 'Children',
                pid: null
            },
            {
                id: 160,
                path: 'country_average_height',
                name: 'Country Average Height',
                pid: null
            }
        ]
    },
    {
        id: 2,
        path: 'celebrity',
        name: 'Celebrity',
        pid: null,
        children: [
            {
                id: 210,
                path: 'entertainment_celebs',
                name: 'Entertainment Celebs',
                pid: null
            },
            {
                id: 220,
                path: 'sports_stars',
                name: 'Sports Stars',
                pid: null
            },
            {
                id: 230,
                path: 'politician',
                name: 'Politician',
                pid: null
            },
            {
                id: 240,
                path: 'height_record_holders',
                name: 'Height Record Holders',
                pid: null
            },
            {
                id: 250,
                path: 'religious_mythological',
                name: 'Religious & Mythological',
                pid: null
            }
        ]
    },
    {
        id: 3,
        path: 'anime',
        name: 'Anime',
        pid: null,
        children: [
            {
                id: 310,
                path: 'one_piece',
                name: 'One Piece',
                pid: null
            },
            {
                id: 320,
                path: 'attack_on_titan',
                name: 'Attack on Titan',
                pid: null
            },
            {
                id: 330,
                path: 'naruto',
                name: 'Naruto',
                pid: null
            },
            {
                id: 340,
                path: 'dragon_ball',
                name: 'Dragon Ball',
                pid: null
            },
            {
                id: 350,
                path: 'demon_slayer',
                name: 'Demon Slayer',
                pid: null
            },
            {
                id: 360,
                path: 'one_punch_man',
                name: 'One Punch Man',
                pid: null
            },
            {
                id: 399,
                path: 'other_anime',
                name: 'Other Anime',
                pid: null
            }

        ]
    },
    {
        id: 10,
        path: 'films',
        name: 'Films',
        pid: null,
        children: [
            {
                id: 1010,
                path: 'star_wars',
                name: 'Star Wars',
                pid: null
            },
            {
                id: 1020,
                path: 'walking_dead',
                name: 'Walking Dead',
                pid: null
            }
        ]
    },
    {
        id: 4,
        path: 'fictional_characters',
        name: 'Fictional Characters',
        pid: null
    },
    {
        id: 5,
        path: 'game',
        name: 'Game',
        pid: null,
        children: [
            {
                id: 510,
                path: 'dungeons_dragons',
                name: 'Dungeons & Dragons',
                pid: null
            }
        ]
    },
    {
        id: 6,
        path: 'animals',
        name: 'Animals',
        pid: null,
        children: [
            {
                id: 610,
                path: 'dogs',
                name: 'Dogs',
                pid: null
            },
            {
                id: 620,
                path: 'cats',
                name: 'Cats',
                pid: null
            },
            {
                id: 630,
                path: 'dinosaurs',
                name: 'dinosaurs',
                nameKey: 'compareheights.categories.dinosaurs',
                pid: null
            }
        ]
    },
    {
        id: 7,
        path: 'plants',
        name: 'Plants',
        pid: null
    },
    {
        id: 8,
        path: 'microorganisms',
        name: 'Microorganisms',
        pid: null
    },
    {
        id: 9,
        path: 'objects',
        name: 'Objects',
        pid: null,
        children: [
            {
                id: 910,
                path: 'astronomy',
                name: 'Astronomy',
                pid: null
            },
            {
                id: 920,
                path: 'buildings',
                name: 'Buildings',
                pid: null
            }
        ]
    }
];

function generateSQL(folderName, orderNum = 1000, parentId = null) {
    const folderPath = path.join(__dirname, folderName);

    if (!fs.existsSync(folderPath)) {
        console.error(`文件夹 ${folderName} 不存在`);
        return;
    }

    // 解析目录名获取type和id
    const folderId = findCategoryId(folderName);

    const items = fs.readdirSync(folderPath, { encoding: 'utf-8' });
    if (items.length === 0) {
        return;
    }
    let allInsertValues = [];

    console.log(`-- 插入${folderName}类型的角色数据`);
    console.log(`-- 基于权威数据和文件，使用GitHub仓库URL`);
    console.log('');
    console.log('INSERT INTO public.characters (id, name, height, cat_ids, media_type, media_url, thumbnail_url, color, color_customizable, color_property, order_num) VALUES');

    items.forEach(item => {
        const itemPath = path.join(folderPath, item);
        const stat = fs.statSync(itemPath);

        if (stat.isDirectory()) {
            // 递归处理子目录
            const subResults = processSubfolder(folderName, item, orderNum, folderId);
            allInsertValues = allInsertValues.concat(subResults);
        } else {
            // 处理文件
            const fileResult = processFile(item, folderName, folderId, orderNum);
            if (fileResult) {
                allInsertValues.push(fileResult);
            }
        }
    });


    // 写入文件  
    const sql = `-- 插入${folderName}类型的角色数据\n-- 基于权威数据和文件，使用GitHub仓库URL\n\nINSERT INTO public.characters (id, name, height, cat_ids, media_type, media_url, thumbnail_url, color, color_customizable, color_property, order_num) VALUES\n${allInsertValues.join(',\n')};\n`;
    const fileName = `./insert_${folderName}.sql`;

    // 这里必须要通过这种方式写入文件，直接把控制台的日志输出到文件的话会有乱码，应该跟操作系统编码格式有关
    fs.writeFileSync(fileName, sql, { encoding: 'utf8' })

    console.log(`处理完成，共 ${allInsertValues.length} 条记录`);


    // 输出所有INSERT语句到控制台
    // console.log(`-- 插入${folderName}类型的角色数据`);
    // console.log(`-- 基于权威数据和文件，使用GitHub仓库URL`);
    // console.log('');
    // console.log('INSERT INTO public.characters (id, name, height, cat_ids, media_type, media_url, thumbnail_url, color, color_customizable, color_property, order_num) VALUES');
    // console.log(allInsertValues.join(',\n'));
    // console.log(';');
    // console.log('');
}

function formatName(name) {
    // 将短划线和下划线替换为空格
    let formatted = name.replace(/[-_]/g, ' ');

    // 将每个单词的首字母大写
    formatted = formatted.split(' ')
        .map(word => {
            if (word.length === 0) return word;
            // 处理特殊缩写（如T-Rex）
            // if (word.toUpperCase() === word && word.length <= 4) {
            //     return word.toUpperCase();
            // }
            return word.charAt(0).toUpperCase() + word.slice(1).toLowerCase();
        })
        .join(' ');

    return formatted;
}

// 根据分类名称查找ID的辅助函数
function findCategoryId(folderName) {

    // 在主分类中查找
    for (const category of DEFAULT_CATEGORIES) {
        if (category.path === folderName) {
            return category.id;
        }

        // 在子分类中查找
        if (category.children) {
            for (const child of category.children) {
                if (child.path === folderName) {
                    return child.id;
                }
            }
        }
    }

    console.warn(`未找到分类: ${folderName}`);
    return null;
}

// 处理单个文件
function processFile(file, parentFolder, parentId, orderNum) {
    console.log(`处理文件: ${file}`);

    // 解析文件名
    const fileExtension = path.extname(file);
    const fileNameWithoutExt = path.basename(file, fileExtension);

    // 找到最后一个短划线的位置
    const lastDashIndex = fileNameWithoutExt.lastIndexOf('-');
    if (lastDashIndex === -1) {
        console.error(`文件 ${file} 格式不正确，找不到高度信息`);
        return null;
    }

    const characterName = fileNameWithoutExt.substring(0, lastDashIndex).replace(/_/g, ' ');
    const height = fileNameWithoutExt.substring(lastDashIndex + 1);

    // 生成字段值
    const id = `${parentFolder}-${characterName.toLowerCase().replace(/ /g, '_')}`;
    const name = formatName(characterName);
    const mediaType = fileExtension.toLowerCase() === '.svg' ? 'svg' : 'image';

    // URL编码文件名以处理特殊字符
    const encodedFileName = encodeURIComponent(file);
    const mediaUrl = `https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/${parentFolder}/${encodedFileName}`;
    const thumbnailUrl = mediaUrl;

    // 生成cat_ids数组
    let catIds = [];
    catIds.push(0);
    if (parentId !== null) catIds.push(parentId);
    const catIdsStr = `ARRAY[${catIds.join(',')}]`;

    // 转义SQL字符串中的特殊字符
    const escapedId = id.replace(/'/g, "''");
    const escapedName = name.replace(/'/g, "''");
    const escapedMediaUrl = mediaUrl.replace(/'/g, "''");
    const escapedThumbnailUrl = thumbnailUrl.replace(/'/g, "''");

    // 构造INSERT VALUES
    return `('${escapedId}', '${escapedName}', ${height}, ${catIdsStr}, '${mediaType}', '${escapedMediaUrl}', '${escapedThumbnailUrl}', NULL, false, NULL, ${orderNum})`;
}

// 处理子文件夹
function processSubfolder(parentFolder, subfolderName, orderNum, parentId) {
    const subfolderPath = path.join(__dirname, parentFolder, subfolderName);
    const subId = findCategoryId(subfolderName);

    const files = fs.readdirSync(subfolderPath, { encoding: 'utf-8' });
    const insertValues = [];

    files.forEach(file => {
        const stat = fs.statSync(path.join(subfolderPath, file));
        if (stat.isFile()) {
            const fileResult = processSubfolderFile(file, parentFolder, subfolderName, subId, parentId, orderNum);
            if (fileResult) {
                insertValues.push(fileResult);
            }
        }
    });

    return insertValues;
}

// 处理子文件夹中的文件
function processSubfolderFile(file, parentFolder, subfolderName, subId, parentId, orderNum) {
    console.log(`处理子目录文件: ${subfolderName}/${file}`);

    // 解析文件名
    const fileExtension = path.extname(file);
    const fileNameWithoutExt = path.basename(file, fileExtension);

    // 找到最后一个短划线的位置
    const lastDashIndex = fileNameWithoutExt.lastIndexOf('-');
    if (lastDashIndex === -1) {
        console.error(`文件 ${file} 格式不正确，找不到高度信息`);
        return null;
    }

    const characterName = fileNameWithoutExt.substring(0, lastDashIndex).replace(/_/g, ' ');
    const height = fileNameWithoutExt.substring(lastDashIndex + 1);

    // 生成字段值，使用层级前缀
    const id = `${parentFolder}-${subfolderName}-${characterName.toLowerCase().replace(/ /g, '_')}`;
    const name = formatName(characterName);
    const mediaType = fileExtension.toLowerCase() === '.svg' ? 'svg' : 'image';

    // URL编码文件名以处理特殊字符
    const encodedFileName = encodeURIComponent(file);
    const mediaUrl = `https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/${parentFolder}/${subfolderName}/${encodedFileName}`;
    const thumbnailUrl = mediaUrl;

    // 生成cat_ids数组
    let catIds = [];
    catIds.push(0);
    if (parentId !== null) catIds.push(parentId);
    if (subId !== null) catIds.push(subId);
    const catIdsStr = `ARRAY[${catIds.join(',')}]`;

    // 转义SQL字符串中的特殊字符
    const escapedId = id.replace(/'/g, "''");
    const escapedName = name.replace(/'/g, "''");
    const escapedMediaUrl = mediaUrl.replace(/'/g, "''");
    const escapedThumbnailUrl = thumbnailUrl.replace(/'/g, "''");

    // 构造INSERT VALUES
    if (parentFolder === 'generic' && subfolderName === 'generic_people') {
        const randomColor = getRandomColor();
        return `('${escapedId}', '${escapedName}', ${height}, ${catIdsStr}, '${mediaType}', '${escapedMediaUrl}', '${escapedThumbnailUrl}', '${randomColor}', true, 'fill', ${orderNum})`;
    } else {
        return `('${escapedId}', '${escapedName}', ${height}, ${catIdsStr}, '${mediaType}', '${escapedMediaUrl}', '${escapedThumbnailUrl}', NULL, false, NULL, ${orderNum})`;
    }
}


// 直接生成celebrity文件夹的SQL
generateSQL('generic', 1000);
generateSQL('celebrity', 2000);
generateSQL('anime', 3000);
generateSQL('fictional_characters', 4000);
generateSQL('game', 5000);
generateSQL('animals', 6000);
generateSQL('plants', 7000);
generateSQL('microorganisms', 8000);
generateSQL('objects', 9000);
generateSQL('films', 10000);

