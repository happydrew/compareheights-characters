-- 插入celebrity类型的角色数据
-- 基于权威数据和文件，使用GitHub仓库URL

INSERT INTO public.characters (id, name, height, cat_ids, media_type, media_url, thumbnail_url, color, color_customizable, color_property, order_num) VALUES
('celebrity-nikki_rodriguez', 'Nikki Rodriguez', 1.63, ARRAY[0,2,210], 'image', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/celebrity/entertainment_celebs/nikki_rodriguez-1.63.png', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/celebrity/entertainment_celebs/nikki_rodriguez-1.63.png', NULL, false, NULL, 2000);
