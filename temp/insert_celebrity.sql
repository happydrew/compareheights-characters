-- 插入celebrity类型的角色数据
-- 基于权威数据和文件，使用GitHub仓库URL

INSERT INTO public.characters (id, name, height, cat_ids, media_type, media_url, thumbnail_url, color, color_customizable, color_property, order_num) VALUES
('celebrity-noah_lalonde', 'Noah Lalonde', 1.78, ARRAY[0,2,210], 'image', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/celebrity/entertainment_celebs/Noah_Lalonde-1.78.png', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/celebrity/entertainment_celebs/Noah_Lalonde-1.78.png', NULL, false, NULL, 2000);
