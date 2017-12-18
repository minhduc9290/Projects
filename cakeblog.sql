CREATE TABLE `users` (
	`id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	`password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	`email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	`display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	`phone` varchar(20) NOT NULL DEFAULT 0,
	`sex` int(11) NOT NULL DEFAULT 0,
	`address` text,
	`status` int(11) DEFAULT 0,
	`created` datetime DEFAULT NULL,
	`modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`username`, `password`, `email`, `display_name`, `phone`, `sex`, `address`, `status`) VALUES
('admin', '$P$BjlKtkCgQ4v6yj7I6KtKcSSUzaPqeG/', 'minhduc9290@gmail.com', 'admin', '0976969290', 0, 'Ung Hoa - HN', 1);

ALTER TABLE `users`
  ADD KEY `user_login_key` (`username`),
  ADD KEY `user_email` (`email`);



CREATE TABLE `categories` (
	`id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	`featured_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	`status` int(11) DEFAULT 0,
	`created` datetime DEFAULT NULL,
	`modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `categories` ( `name`, `featured_image`, `status`) VALUES
('Uncategorized', 'img/image.png',1);

CREATE TABLE `posts` (
	`id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`user_id` bigint(20) NOT NULL,
	`category_id` bigint(20) NOT NULL,
	`title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	`content` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	`featured_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	`comment_status` int(11) DEFAULT 1,
	`status` int(11) DEFAULT 0,
	`created` datetime DEFAULT NULL,
	`modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `posts`
 ADD KEY `post_user_id_key` (`user_id`),
 ADD KEY `post_category_key` (`category_id`);

CREATE TABLE `comments` (
	`id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`post_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	`email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	`content` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	`status` int(11) DEFAULT 0,
	`created` datetime DEFAULT NULL,
	`modified` datetime DEFAULT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `comments`
 ADD KEY `post_post_id_key` (`post_id`);
