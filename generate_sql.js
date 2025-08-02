const fs = require('fs');
const path = require('path');

function generateSQL(folderName, orderNum = 1000) {
    const folderPath = path.join(__dirname, folderName);

    if (!fs.existsSync(folderPath)) {
        console.error(`文件夹 ${folderName} 不存在`);
        return;
    }

    const files = fs.readdirSync(folderPath, { encoding: 'utf-8' });
    let sqlStatements = [];

    console.log(`-- 插入${folderName}类型的角色数据`);
    console.log(`-- 基于权威数据和文件，使用GitHub仓库URL`);
    console.log('');
    console.log('INSERT INTO public.characters (id, name, height, type, media_type, media_url, thumbnail_url, color, color_customizable, color_property, order_num) VALUES');

    const insertValues = [];

    files.forEach(file => {
        console.log(`处理文件: ${file}`);

        // 解析文件名
        const fileExtension = path.extname(file);
        const fileNameWithoutExt = path.basename(file, fileExtension);

        // 找到最后一个短划线的位置
        const lastDashIndex = fileNameWithoutExt.lastIndexOf('-');
        if (lastDashIndex === -1) {
            console.error(`文件 ${file} 格式不正确，找不到高度信息`);
            // 跳过该文件
            return;
        }

        const characterName = fileNameWithoutExt.substring(0, lastDashIndex);
        const height = fileNameWithoutExt.substring(lastDashIndex + 1);

        // 生成字段值
        const type = folderName.split('-')[0];
        const id = `${type}-${characterName.toLowerCase().replace(/ /g, '-')}`;
        const name = formatName(characterName);
        const mediaType = fileExtension.toLowerCase() === '.svg' ? 'svg' : 'image';
        // URL编码文件名以处理特殊字符
        const encodedFileName = encodeURIComponent(file);
        const mediaUrl = `https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/${type}/${encodedFileName}`;
        const thumbnailUrl = mediaUrl;

        // 转义SQL字符串中的特殊字符
        const escapedId = id.replace(/'/g, "''");
        const escapedName = name.replace(/'/g, "''");
        const escapedMediaUrl = mediaUrl.replace(/'/g, "''");
        const escapedThumbnailUrl = thumbnailUrl.replace(/'/g, "''");

        // 构造INSERT VALUES
        const values = `('${escapedId}', '${escapedName}', ${height}, '${type}', '${mediaType}', '${escapedMediaUrl}', '${escapedThumbnailUrl}', NULL, false, NULL, ${orderNum})`;
        insertValues.push(values);
    });

    console.log(`处理完成，共 ${insertValues.length} 条记录`);

    // 写入文件  
    const sql = `-- 插入${folderName}类型的角色数据\n-- 基于权威数据和文件，使用GitHub仓库URL\n\nINSERT INTO public.characters (id, name, height, type, media_type, media_url, thumbnail_url, color, color_customizable, color_property, order_num) VALUES\n${insertValues.join(',\n')};\n`;
    const fileName = `./insert_${folderName}_characters.sql`;

    fs.writeFileSync(fileName, sql, { encoding: 'utf8' })

    // 输出所有INSERT语句到控制台
    console.log(`-- 插入${folderName}类型的角色数据`);
    console.log(`-- 基于权威数据和文件，使用GitHub仓库URL`);
    console.log('');
    console.log('INSERT INTO public.characters (id, name, height, type, media_type, media_url, thumbnail_url, color, color_customizable, color_property, order_num) VALUES');
    console.log(insertValues.join(',\n'));
    console.log(';');
    console.log('');
}

function formatName(name) {
    // 将短划线和下划线替换为空格
    let formatted = name.replace(/[-_]/g, ' ');

    // 将每个单词的首字母大写
    formatted = formatted.split(' ')
        .map(word => {
            if (word.length === 0) return word;
            // 处理特殊缩写（如T-Rex）
            if (word.toUpperCase() === word && word.length <= 4) {
                return word.toUpperCase();
            }
            return word.charAt(0).toUpperCase() + word.slice(1).toLowerCase();
        })
        .join(' ');

    return formatted;
}

// 直接生成biology文件夹的SQL\
generateSQL('celebrity', 1000);
generateSQL('object-2', 2100);
generateSQL('biology-2', 3100);
generateSQL('generic-2', 800);

module.exports = { generateSQL, formatName };