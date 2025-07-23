-- 插入generic类型的角色数据
-- 基于权威身高数据和SVG文件，使用GitHub仓库URL
-- 所有ID统一加上generic-前缀
-- gen开头的角色可自定义颜色并分配清爽随机色彩

-- 清空现有generic角色数据（可选）
-- DELETE FROM characters WHERE type = 'generic';

-- 成年男性角色 (平均身高1.75米) - 不可自定义颜色
INSERT INTO public.characters (id, name, height, type, media_type, media_url, thumbnail_url, color, color_customizable, color_property) VALUES
('generic-man-1', 'Man 1', 1.75, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/man1.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/man1.svg', NULL, false, NULL),
('generic-man-2', 'Man 2', 1.75, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/man2.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/man2.svg', NULL, false, NULL),
('generic-man-3', 'Man 3', 1.75, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/man3.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/man3.svg', NULL, false, NULL),
('generic-man-4', 'Man 4', 1.75, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/man4.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/man4.svg', NULL, false, NULL),
('generic-man-5', 'Man 5', 1.75, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/man5.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/man5.svg', NULL, false, NULL),
('generic-man-6', 'Man 6', 1.75, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/man6.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/man6.svg', NULL, false, NULL),
('generic-man-7', 'Man 7', 1.75, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/man7.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/man7.svg', NULL, false, NULL),
('generic-man-8', 'Man 8', 1.75, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/man8.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/man8.svg', NULL, false, NULL);

-- 成年女性角色 (平均身高1.62米) - 不可自定义颜色
INSERT INTO public.characters (id, name, height, type, media_type, media_url, thumbnail_url, color, color_customizable, color_property) VALUES
('generic-woman-1', 'Woman 1', 1.62, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/woman1.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/woman1.svg', NULL, false, NULL),
('generic-woman-2', 'Woman 2', 1.62, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/woman2.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/woman2.svg', NULL, false, NULL),
('generic-woman-3', 'Woman 3', 1.62, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/woman3.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/woman3.svg', NULL, false, NULL),
('generic-woman-4', 'Woman 4', 1.62, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/woman4.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/woman4.svg', NULL, false, NULL),
('generic-woman-5', 'Woman 5', 1.62, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/woman5.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/woman5.svg', NULL, false, NULL),
('generic-woman-6', 'Woman 6', 1.62, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/woman6.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/woman6.svg', NULL, false, NULL),
('generic-woman-7', 'Woman 7', 1.62, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/woman7.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/woman7.svg', NULL, false, NULL);

-- 12岁男孩角色 (平均身高1.50米) - 不可自定义颜色
INSERT INTO public.characters (id, name, height, type, media_type, media_url, thumbnail_url, color, color_customizable, color_property) VALUES
('generic-boy-1', 'Boy 1', 1.50, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/boy1.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/boy1.svg', NULL, false, NULL),
('generic-boy-2', 'Boy 2', 1.50, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/boy2.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/boy2.svg', NULL, false, NULL),
('generic-boy-3', 'Boy 3', 1.50, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/boy3.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/boy3.svg', NULL, false, NULL),
('generic-boy-4', 'Boy 4', 1.50, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/boy4.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/boy4.svg', NULL, false, NULL),
('generic-boy-5', 'Boy 5', 1.50, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/boy5.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/boy5.svg', NULL, false, NULL),
('generic-boy-6', 'Boy 6', 1.50, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/boy6.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/boy6.svg', NULL, false, NULL),
('generic-boy-7', 'Boy 7', 1.50, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/boy7.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/boy7.svg', NULL, false, NULL),
('generic-boy-8', 'Boy 8', 1.50, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/boy8.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/boy8.svg', NULL, false, NULL),
('generic-boy-9', 'Boy 9', 1.50, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/boy9.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/boy9.svg', NULL, false, NULL),
('generic-boy-10', 'Boy 10', 1.50, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/boy10.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/boy10.svg', NULL, false, NULL),
('generic-boy-11', 'Boy 11', 1.50, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/boy11.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/boy11.svg', NULL, false, NULL),
('generic-boy-12', 'Boy 12', 1.50, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/boy12.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/boy12.svg', NULL, false, NULL),
('generic-boy-13', 'Boy 13', 1.50, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/boy13.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/boy13.svg', NULL, false, NULL),
('generic-boy-14', 'Boy 14', 1.50, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/boy14.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/boy14.svg', NULL, false, NULL),
('generic-boy-15', 'Boy 15', 1.50, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/boy15.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/boy15.svg', NULL, false, NULL),
('generic-boy-16', 'Boy 16', 1.50, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/boy16.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/boy16.svg', NULL, false, NULL),
('generic-boy-17', 'Boy 17', 1.50, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/boy17.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/boy17.svg', NULL, false, NULL),
('generic-boy-18', 'Boy 18', 1.50, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/boy18.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/boy18.svg', NULL, false, NULL);

-- 12岁女孩角色 (平均身高1.51米) - 不可自定义颜色
INSERT INTO public.characters (id, name, height, type, media_type, media_url, thumbnail_url, color, color_customizable, color_property) VALUES
('generic-girl-1', 'Girl 1', 1.51, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/girl1.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/girl1.svg', NULL, false, NULL),
('generic-girl-2', 'Girl 2', 1.51, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/girl2.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/girl2.svg', NULL, false, NULL),
('generic-girl-3', 'Girl 3', 1.51, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/girl3.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/girl3.svg', NULL, false, NULL),
('generic-girl-4', 'Girl 4', 1.51, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/girl4.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/girl4.svg', NULL, false, NULL),
('generic-girl-5', 'Girl 5', 1.51, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/girl5.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/girl5.svg', NULL, false, NULL),
('generic-girl-6', 'Girl 6', 1.51, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/girl6.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/girl6.svg', NULL, false, NULL),
('generic-girl-7', 'Girl 7', 1.51, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/girl7.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/girl7.svg', NULL, false, NULL),
('generic-girl-8', 'Girl 8', 1.51, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/girl8.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/girl8.svg', NULL, false, NULL),
('generic-girl-9', 'Girl 9', 1.51, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/girl9.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/girl9.svg', NULL, false, NULL),
('generic-girl-10', 'Girl 10', 1.51, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/girl10.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/girl10.svg', NULL, false, NULL),
('generic-girl-11', 'Girl 11', 1.51, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/girl11.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/girl11.svg', NULL, false, NULL),
('generic-girl-12', 'Girl 12', 1.51, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/girl12.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/girl12.svg', NULL, false, NULL),
('generic-girl-13', 'Girl 13', 1.51, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/girl13.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/girl13.svg', NULL, false, NULL),
('generic-girl-14', 'Girl 14', 1.51, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/girl14.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/girl14.svg', NULL, false, NULL),
('generic-girl-15', 'Girl 15', 1.51, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/girl15.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/girl15.svg', NULL, false, NULL),
('generic-girl-16', 'Girl 16', 1.51, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/girl16.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/girl16.svg', NULL, false, NULL),
('generic-girl-17', 'Girl 17', 1.51, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/girl17.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/girl17.svg', NULL, false, NULL),
('generic-girl-18', 'Girl 18', 1.51, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/girl18.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/girl18.svg', NULL, false, NULL);

-- 老年男性角色 (平均身高1.68米) - 不可自定义颜色
INSERT INTO public.characters (id, name, height, type, media_type, media_url, thumbnail_url, color, color_customizable, color_property) VALUES
('generic-oldman-1', 'Old Man 1', 1.68, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/oldman1.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/oldman1.svg', NULL, false, NULL),
('generic-oldman-2', 'Old Man 2', 1.68, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/oldman2.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/oldman2.svg', NULL, false, NULL),
('generic-oldman-3', 'Old Man 3', 1.68, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/oldman3.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/oldman3.svg', NULL, false, NULL),
('generic-oldman-4', 'Old Man 4', 1.68, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/oldman4.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/oldman4.svg', NULL, false, NULL),
('generic-oldman-5', 'Old Man 5', 1.68, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/oldman5.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/oldman5.svg', NULL, false, NULL);

-- 老年女性角色 (平均身高1.58米) - 不可自定义颜色
INSERT INTO public.characters (id, name, height, type, media_type, media_url, thumbnail_url, color, color_customizable, color_property) VALUES
('generic-oldwoman-1', 'Old Woman 1', 1.58, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/oldwoman1.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/oldwoman1.svg', NULL, false, NULL),
('generic-oldwoman-2', 'Old Woman 2', 1.58, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/oldwoman2.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/oldwoman2.svg', NULL, false, NULL),
('generic-oldwoman-3', 'Old Woman 3', 1.58, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/oldwoman3.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/oldwoman3.svg', NULL, false, NULL),
('generic-oldwoman-4', 'Old Woman 4', 1.58, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/oldwoman4.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/oldwoman4.svg', NULL, false, NULL),
('generic-oldwoman-5', 'Old Woman 5', 1.58, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/oldwoman5.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/oldwoman5.svg', NULL, false, NULL),
('generic-oldwoman-6', 'Old Woman 6', 1.58, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/oldwoman6.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/oldwoman6.svg', NULL, false, NULL);

-- 可自定义颜色的成年男性角色 (genman系列) - 清爽随机色彩
INSERT INTO public.characters (id, name, height, type, media_type, media_url, thumbnail_url, color, color_customizable, color_property) VALUES
('generic-genman-1', 'Generic Man 1', 1.75, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/genman1.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/genman1.svg', '#3B82F6', true, 'fill'),
('generic-genman-2', 'Generic Man 2', 1.75, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/genman2.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/genman2.svg', '#10B981', true, 'fill'),
('generic-genman-3', 'Generic Man 3', 1.75, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/genman3.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/genman3.svg', '#F59E0B', true, 'fill'),
('generic-genman-4', 'Generic Man 4', 1.75, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/genman4.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/genman4.svg', '#8B5CF6', true, 'fill'),
('generic-genman-5', 'Generic Man 5', 1.75, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/genman5.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/genman5.svg', '#EF4444', true, 'fill'),
('generic-genman-6', 'Generic Man 6', 1.75, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/genman6.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/genman6.svg', '#06B6D4', true, 'fill'),
('generic-genman-7', 'Generic Man 7', 1.75, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/genman7.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/genman7.svg', '#84CC16', true, 'fill'),
('generic-genman-8', 'Generic Man 8', 1.75, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/genman8.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/genman8.svg', '#F97316', true, 'fill');

-- 可自定义颜色的成年女性角色 (genwoman系列) - 清爽随机色彩
INSERT INTO public.characters (id, name, height, type, media_type, media_url, thumbnail_url, color, color_customizable, color_property) VALUES
('generic-genwoman-1', 'Generic Woman 1', 1.62, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/genwoman1.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/genwoman1.svg', '#EC4899', true, 'fill'),
('generic-genwoman-2', 'Generic Woman 2', 1.62, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/genwoman2.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/genwoman2.svg', '#14B8A6', true, 'fill'),
('generic-genwoman-3', 'Generic Woman 3', 1.62, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/genwoman3.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/genwoman3.svg', '#A855F7', true, 'fill'),
('generic-genwoman-4', 'Generic Woman 4', 1.62, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/genwoman4.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/genwoman4.svg', '#22C55E', true, 'fill'),
('generic-genwoman-5', 'Generic Woman 5', 1.62, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/genwoman5.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/genwoman5.svg', '#3B82F6', true, 'fill'),
('generic-genwoman-6', 'Generic Woman 6', 1.62, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/genwoman6.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/genwoman6.svg', '#F59E0B', true, 'fill'),
('generic-genwoman-7', 'Generic Woman 7', 1.62, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/genwoman7.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/genwoman7.svg', '#EF4444', true, 'fill'),
('generic-genwoman-8', 'Generic Woman 8', 1.62, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/genwoman8.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/genwoman8.svg', '#06B6D4', true, 'fill');

-- 检查插入结果
SELECT 
    type, 
    color_customizable,
    COUNT(*) as count,
    AVG(height) as avg_height,
    MIN(height) as min_height,
    MAX(height) as max_height
FROM characters 
WHERE type = 'generic'
GROUP BY type, color_customizable
ORDER BY color_customizable;

-- 显示所有generic角色概览
SELECT id, name, height, color, color_customizable FROM characters WHERE type = 'generic' ORDER BY height, name;


-- 中性角色 (平均身高1.75米) - 不可自定义颜色
INSERT INTO public.characters (id, name, height, type, media_type, media_url, thumbnail_url, color, color_customizable, color_property) VALUES
('generic-agender-1', 'Agender 1', 1.75, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/agender-1.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/agender-1.svg', NULL, false, NULL),
('generic-agender-1', 'Agender 2', 1.75, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/agender-2.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/agender-2.svg', NULL, false, NULL),
('generic-agender-1', 'Agender 3', 1.75, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/agender-3.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/agender-3.svg', NULL, false, NULL),
('generic-agender-1', 'Agender 4', 1.75, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/agender-4.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/agender-4.svg', NULL, false, NULL),
('generic-agender-1', 'Agender 5', 1.75, 'generic', 'svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/agender-5.svg', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/generic/agender-5.svg', NULL, false, NULL);
