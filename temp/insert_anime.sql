-- 插入anime类型的角色数据
-- 基于权威数据和文件，使用GitHub仓库URL

INSERT INTO public.characters (id, name, height, cat_ids, media_type, media_url, thumbnail_url, color, color_customizable, color_property, order_num) VALUES
('anime-colossal_titan', 'Colossal Titan', 60, ARRAY[0,3,320], 'image', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/anime/attack_on_titan/colossal_titan-60.png', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/anime/attack_on_titan/colossal_titan-60.png', NULL, false, NULL, 3000);
