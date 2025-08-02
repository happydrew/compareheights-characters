-- 插入biology类型的角色数据
-- 基于权威数据和文件，使用GitHub仓库URL

INSERT INTO public.characters (id, name, height, type, media_type, media_url, thumbnail_url, color, color_customizable, color_property, order_num) VALUES
('biology-godzilla-2021', 'Godzilla 2021', 119.8, 'biology', 'image', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/biology/Godzilla%202021-119.8.png', 'https://raw.githubusercontent.com/happydrew/compareheights-characters/refs/heads/main/biology/Godzilla%202021-119.8.png', NULL, false, NULL, 3100);
