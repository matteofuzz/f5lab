BEGIN TRANSACTION;
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
INSERT INTO "schema_migrations" VALUES('20110817122623');
INSERT INTO "schema_migrations" VALUES('20110817122624');
INSERT INTO "schema_migrations" VALUES('20110817122625');
INSERT INTO "schema_migrations" VALUES('20110817122626');
INSERT INTO "schema_migrations" VALUES('20110817122627');
INSERT INTO "schema_migrations" VALUES('20110817122628');
INSERT INTO "schema_migrations" VALUES('20110817122629');
INSERT INTO "schema_migrations" VALUES('20110817122630');
INSERT INTO "schema_migrations" VALUES('20110817122631');
INSERT INTO "schema_migrations" VALUES('20110817122632');
INSERT INTO "schema_migrations" VALUES('20110817122633');
INSERT INTO "schema_migrations" VALUES('20110817122634');
INSERT INTO "schema_migrations" VALUES('20110817122635');
INSERT INTO "schema_migrations" VALUES('20110817122636');
INSERT INTO "schema_migrations" VALUES('20110817122637');
INSERT INTO "schema_migrations" VALUES('20110817122638');
INSERT INTO "schema_migrations" VALUES('20110817122639');
INSERT INTO "schema_migrations" VALUES('20110817131713');
INSERT INTO "schema_migrations" VALUES('20110817131714');
INSERT INTO "schema_migrations" VALUES('20110817131715');
INSERT INTO "schema_migrations" VALUES('20110817131716');
INSERT INTO "schema_migrations" VALUES('20110817131717');
INSERT INTO "schema_migrations" VALUES('20110817131718');
INSERT INTO "schema_migrations" VALUES('20110817131719');
INSERT INTO "schema_migrations" VALUES('20110817133246');
INSERT INTO "schema_migrations" VALUES('20110817133247');
INSERT INTO "schema_migrations" VALUES('20110817211218');
INSERT INTO "schema_migrations" VALUES('20110817211219');
INSERT INTO "schema_migrations" VALUES('20110818115331');
CREATE TABLE "slugs" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "sluggable_id" integer, "sequence" integer DEFAULT 1 NOT NULL, "sluggable_type" varchar(40), "scope" varchar(40), "created_at" datetime, "locale" varchar(255));
INSERT INTO "slugs" VALUES(1,'home',1,1,'Page',NULL,'2011-08-17 12:26:32.683661','en');
INSERT INTO "slugs" VALUES(2,'page-not-found',2,1,'Page',NULL,'2011-08-17 12:26:32.800287','en');
INSERT INTO "slugs" VALUES(3,'about',3,1,'Page',NULL,'2011-08-17 12:26:32.832215','en');
INSERT INTO "slugs" VALUES(4,'matteo',1,1,'User',NULL,'2011-08-17 12:30:18.648640','en');
INSERT INTO "slugs" VALUES(5,'home',1,1,'Page',NULL,'2011-08-17 13:01:31.662616','it');
INSERT INTO "slugs" VALUES(6,'pagina-non-trovata',2,1,'Page',NULL,'2011-08-17 13:02:39.720571','it');
INSERT INTO "slugs" VALUES(7,'about',3,1,'Page',NULL,'2011-08-17 13:08:39.633490','it');
INSERT INTO "slugs" VALUES(8,'blog-page',4,1,'Page',NULL,'2011-08-17 13:17:31.219605','en');
INSERT INTO "slugs" VALUES(9,'blog',4,1,'Page',NULL,'2011-08-17 13:19:13.423194','it');
INSERT INTO "slugs" VALUES(10,'blog',4,1,'Page',NULL,'2011-08-17 13:19:24.081003','en');
INSERT INTO "slugs" VALUES(11,'questo-è-il-mio-primo-post-on-refinerycms-blog',1,1,'BlogPost',NULL,'2011-08-17 13:21:42.047195','en');
INSERT INTO "slugs" VALUES(12,'questo-è-il-mio-primo-post-on-refinerycms-blog',1,1,'BlogPost',NULL,'2011-08-17 13:24:05.680197','it');
INSERT INTO "slugs" VALUES(13,'contact-page',5,1,'Page',NULL,'2011-08-17 13:33:12.791597','en');
INSERT INTO "slugs" VALUES(14,'thank-you',6,1,'Page',NULL,'2011-08-17 13:33:12.923850','en');
INSERT INTO "slugs" VALUES(15,'privacy-policy',7,1,'Page',NULL,'2011-08-17 13:33:12.999380','en');
INSERT INTO "slugs" VALUES(16,'contattaci',5,1,'Page',NULL,'2011-08-17 13:35:37.288587','it');
INSERT INTO "slugs" VALUES(17,'contact',5,1,'Page',NULL,'2011-08-17 13:38:25.832692','en');
INSERT INTO "slugs" VALUES(18,'grazie',6,1,'Page',NULL,'2011-08-17 13:42:02.127248','it');
INSERT INTO "slugs" VALUES(19,'privacy',7,1,'Page',NULL,'2011-08-17 20:39:39.811442','it');
INSERT INTO "slugs" VALUES(20,'ricerca',8,1,'Page',NULL,'2011-08-17 20:41:36.507839','it');
INSERT INTO "slugs" VALUES(21,'search',8,1,'Page',NULL,'2011-08-17 20:42:30.337895','en');
INSERT INTO "slugs" VALUES(22,'matteo',1,1,'User',NULL,'2011-08-17 22:17:05.870013','it');
INSERT INTO "slugs" VALUES(23,'portfolio-items',9,1,'Page',NULL,'2011-08-18 09:42:10.036686','en');
INSERT INTO "slugs" VALUES(24,'portfolio-items',10,2,'Page',NULL,'2011-08-18 11:53:51.563695','en');
INSERT INTO "slugs" VALUES(25,'portfolio',10,1,'Page',NULL,'2011-08-18 12:03:56.564953','it');
INSERT INTO "slugs" VALUES(26,'portfolio',10,1,'Page',NULL,'2011-08-18 12:04:19.935873','en');
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('refinery_settings',40);
INSERT INTO "sqlite_sequence" VALUES('slugs',26);
INSERT INTO "sqlite_sequence" VALUES('page_parts',17);
INSERT INTO "sqlite_sequence" VALUES('page_part_translations',32);
INSERT INTO "sqlite_sequence" VALUES('pages',10);
INSERT INTO "sqlite_sequence" VALUES('page_translations',20);
INSERT INTO "sqlite_sequence" VALUES('seo_meta',21);
INSERT INTO "sqlite_sequence" VALUES('roles',2);
INSERT INTO "sqlite_sequence" VALUES('users',1);
INSERT INTO "sqlite_sequence" VALUES('user_plugins',49);
INSERT INTO "sqlite_sequence" VALUES('blog_posts',1);
INSERT INTO "sqlite_sequence" VALUES('tags',1);
INSERT INTO "sqlite_sequence" VALUES('taggings',1);
INSERT INTO "sqlite_sequence" VALUES('inquiries',1);
INSERT INTO "sqlite_sequence" VALUES('images',3);
INSERT INTO "sqlite_sequence" VALUES('blog_comments',1);
INSERT INTO "sqlite_sequence" VALUES('portfolio_items',1);
CREATE TABLE "refinery_settings" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "value" text, "destroyable" boolean DEFAULT 't', "created_at" datetime, "updated_at" datetime, "scoping" varchar(255), "restricted" boolean DEFAULT 'f', "callback_proc_as_string" varchar(255), "form_value_type" varchar(255));
INSERT INTO "refinery_settings" VALUES(1,'use_marketable_urls','--- "true"
','t','2011-08-17 12:26:32.481861','2011-08-17 12:26:32.481861','pages','f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(2,'i18n_translation_enabled','--- "true"
','t','2011-08-17 12:26:32.583845','2011-08-17 12:26:32.583845','refinery','f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(3,'i18n_translation_default_frontend_locale','--- :it
','t','2011-08-17 12:26:32.591441','2011-08-17 13:11:26.227971','refinery','f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(4,'dragonfly_secret','--- adeecc8a5cf797d9484ed88ed65456487cf721c61ec3d081
','t','2011-08-17 12:28:01.205809','2011-08-17 12:28:01.205809',NULL,'f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(5,'approximate_ascii','--- "false"
','t','2011-08-17 12:28:02.243088','2011-08-17 12:28:02.243088','pages','f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(6,'strip_non_ascii','--- "false"
','t','2011-08-17 12:28:02.267617','2011-08-17 12:28:02.267617','pages','f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(7,'i18n_translation_locales','--- 
:en: English
:fr: "Fran\xC3\xA7ais"
:nl: Nederlands
:"pt-BR": "Portugu\xC3\xAAs"
:da: Dansk
:nb: "Norsk Bokm\xC3\xA5l"
:sl: Slovenian
:es: "Espa\xC3\xB1ol"
:it: Italiano
:de: Deutsch
:lv: Latviski
:ru: "\xD0\xA0\xD1\x83\xD1\x81\xD1\x81\xD0\xBA\xD0\xB8\xD0\xB9"
:sv: Svenska
:pl: Polski
:"zh-CN": Simplified Chinese
:"zh-TW": Traditional Chinese
:el: "\xCE\x95\xCE\xBB\xCE\xBB\xCE\xB7\xCE\xBD\xCE\xB9\xCE\xBA\xCE\xAC"
:rs: Srpski
:cs: "\xC4\x8Cesky"
:sk: "Slovensk\xC3\xBD"
:jp: "\xE6\x97\xA5\xE6\x9C\xAC\xE8\xAA\x9E"
','t','2011-08-17 12:29:41.510361','2011-08-17 12:59:28.160687','refinery','f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(8,'site_name','--- F5lab
','t','2011-08-17 12:29:42.980879','2011-08-17 13:09:26.420374',NULL,'f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(9,'use_resource_caching','--- "true"
','t','2011-08-17 12:29:42.999330','2011-08-17 12:29:42.999330',NULL,'f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(10,'use_google_ajax_libraries','--- "false"
','t','2011-08-17 12:29:43.051790','2011-08-17 12:29:43.051790',NULL,'f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(11,'i18n_translation_default_locale','--- :it
','t','2011-08-17 12:30:19.023494','2011-08-17 12:54:41.142960','refinery','f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(12,'i18n_translation_current_locale','--- :it
','t','2011-08-17 12:30:19.042651','2011-08-17 13:11:41.080946','refinery','f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(13,'i18n_translation_frontend_locales','--- 
- :en
- :it
','t','2011-08-17 12:30:19.061001','2011-08-17 12:55:04.152940','refinery','f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(14,'activity_show_limit','--- 7
','t','2011-08-17 12:30:19.423519','2011-08-17 12:30:19.423519',NULL,'f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(15,'page_title','--- 
:chain_page_title: false
:ancestors: 
  :separator: " | "
  :class: ancestors
  :tag: span
:page_title: 
  :class: 
  :tag: 
  :wrap_if_not_chained: false
','t','2011-08-17 12:31:14.680610','2011-08-17 12:31:14.680610',NULL,'f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(16,'authenticity_token_on_frontend','--- "true"
','t','2011-08-17 12:31:15.065723','2011-08-17 12:31:15.065723',NULL,'f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(17,'frontend_refinery_stylesheets_enabled','--- "true"
','t','2011-08-17 12:31:15.138706','2011-08-17 12:31:15.138706',NULL,'f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(18,'menu_hide_children','--- "false"
','t','2011-08-17 12:31:15.196647','2011-08-17 12:31:15.196647',NULL,'f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(19,'cache_pages_backend','--- "false"
','t','2011-08-17 12:58:30.923590','2011-08-17 12:58:30.923590',NULL,'f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(20,'default_page_parts','--- 
- Body
- Side Body
','t','2011-08-17 12:59:47.719006','2011-08-17 12:59:47.719006',NULL,'f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(21,'new_page_parts','--- "false"
','t','2011-08-17 12:59:48.027247','2011-08-17 12:59:48.027247',NULL,'f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(22,'approximate_ascii','--- "false"
','t','2011-08-17 13:17:12.545958','2011-08-17 13:17:12.545958','blog','f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(23,'strip_non_ascii','--- "false"
','t','2011-08-17 13:17:12.690622','2011-08-17 13:17:12.690622','blog','f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(24,'comments_allowed','--- "true"
','t','2011-08-17 13:18:27.427810','2011-08-17 13:27:45.833396','blog','f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(25,'comment_moderation','--- "true"
','t','2011-08-17 13:18:27.599634','2011-08-17 13:18:27.599634','blog','f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(26,'blog_posts_per_page','--- 10
','t','2011-08-17 13:18:51.445645','2011-08-17 13:18:51.445645',NULL,'f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(27,'share_this_key','--- xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
','t','2011-08-17 13:22:24.244005','2011-08-17 13:22:24.244005','blog','f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(28,'image_views','--- 
- :grid
- :list
','t','2011-08-17 13:28:24.315856','2011-08-17 13:28:24.315856',NULL,'f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(29,'preferred_image_view','--- :grid
','t','2011-08-17 13:28:24.363524','2011-08-17 13:28:24.363524',NULL,'f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(30,'inquiry_notification_recipients','--- info@f5lab.com
','t','2011-08-17 13:34:04.035285','2011-08-17 13:34:26.276635',NULL,'f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(31,'inquiry_confirmation_body','--- |-
Thank you for your inquiry %name%,

This email is a receipt to confirm we have received your inquiry and we''ll be in touch shortly.

Thanks.
','t','2011-08-17 13:34:32.285019','2011-08-17 13:34:32.285019',NULL,'f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(32,'tld_length','--- 1
','t','2011-08-17 13:34:32.599054','2011-08-17 13:34:32.599054',NULL,'f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(33,'inquiry_confirmation_subject','--- Thank you for your inquiry
','t','2011-08-17 13:34:32.697743','2011-08-17 13:34:32.697743',NULL,'f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(34,'show_contact_privacy_link','--- "false"
','t','2011-08-17 13:39:06.879591','2011-08-17 13:39:06.879591',NULL,'f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(35,'inquiry_notification_subject','--- New inquiry from your website
','t','2011-08-17 13:40:20.189165','2011-08-17 13:40:20.189165',NULL,'f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(36,'page_images_captions','--- "true"
','t','2011-08-17 21:13:45.905556','2011-08-17 21:17:26.792407',NULL,'f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(37,'user_image_sizes','--- 
:small: 110x110>
:medium: 225x255>
:large: 450x450>
','f','2011-08-17 21:14:39.974927','2011-08-17 21:14:39.974927',NULL,'f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(38,'superuser_can_assign_roles','--- "false"
','t','2011-08-17 22:10:10.431866','2011-08-17 22:10:10.431866',NULL,'f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(39,'comment_notification_subject','--- New inquiry from your website
','t','2011-08-17 22:13:45.544457','2011-08-17 22:13:45.544457','blog','f',NULL,'text_area');
INSERT INTO "refinery_settings" VALUES(40,'comment_notification_recipients','--- matteo.folin@gmail.com
','t','2011-08-17 22:13:45.773616','2011-08-17 22:13:45.773616','blog','f',NULL,'text_area');
CREATE TABLE "roles_users" ("user_id" integer, "role_id" integer);
INSERT INTO "roles_users" VALUES(1,1);
INSERT INTO "roles_users" VALUES(1,2);
CREATE TABLE "roles" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255));
INSERT INTO "roles" VALUES(1,'Refinery');
INSERT INTO "roles" VALUES(2,'Superuser');
CREATE TABLE "user_plugins" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "user_id" integer, "name" varchar(255), "position" integer);
INSERT INTO "user_plugins" VALUES(34,1,'refinery_dashboard',0);
INSERT INTO "user_plugins" VALUES(35,1,'refinery_files',1);
INSERT INTO "user_plugins" VALUES(36,1,'refinery_images',2);
INSERT INTO "user_plugins" VALUES(37,1,'refinery_pages',3);
INSERT INTO "user_plugins" VALUES(38,1,'refinery_settings',4);
INSERT INTO "user_plugins" VALUES(39,1,'refinery_users',5);
INSERT INTO "user_plugins" VALUES(40,1,'refinerycms_base',6);
INSERT INTO "user_plugins" VALUES(41,1,'refinery_core',7);
INSERT INTO "user_plugins" VALUES(42,1,'refinery_dialogs',8);
INSERT INTO "user_plugins" VALUES(43,1,'refinery_i18n',9);
INSERT INTO "user_plugins" VALUES(44,1,'refinery_generators',10);
INSERT INTO "user_plugins" VALUES(45,1,'refinerycms_blog',11);
INSERT INTO "user_plugins" VALUES(46,1,'refinery_inquiries',12);
INSERT INTO "user_plugins" VALUES(47,1,'refinerycms_search',13);
INSERT INTO "user_plugins" VALUES(48,1,'page_images',14);
INSERT INTO "user_plugins" VALUES(49,1,'portfolio_items',15);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "username" varchar(255) NOT NULL, "email" varchar(255) NOT NULL, "encrypted_password" varchar(255) NOT NULL, "persistence_token" varchar(255), "created_at" datetime, "updated_at" datetime, "perishable_token" varchar(255), "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar(255), "last_sign_in_ip" varchar(255), "sign_in_count" integer, "remember_token" varchar(255), "reset_password_token" varchar(255), "remember_created_at" datetime);
INSERT INTO "users" VALUES(1,'matteo','matteo.folin@gmail.com','$2a$10$/v0FQPYmujw9SMhHTVlmHeDmOOhy5rfeqL7DbDCls98WNB5yJj3Nu',NULL,'2011-08-17 12:30:18.578981','2011-08-17 22:23:28.035973',NULL,'2011-08-17 22:23:28.021786','2011-08-17 12:30:18.816595','127.0.0.1','127.0.0.1',2,NULL,NULL,NULL);
CREATE TABLE "images" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "image_mime_type" varchar(255), "image_name" varchar(255), "image_size" integer, "image_width" integer, "image_height" integer, "created_at" datetime, "updated_at" datetime, "image_uid" varchar(255), "image_ext" varchar(255));
INSERT INTO "images" VALUES(1,'image/jpeg','coltrane_john.jpg',13108,283,300,'2011-08-17 21:14:38.923513','2011-08-17 21:14:38.923513','2011/08/17/23_14_38_915_coltrane_john.jpg','jpg');
INSERT INTO "images" VALUES(2,'image/jpeg','mccoytyner.JPG',70734,1024,1165,'2011-08-17 21:18:41.597844','2011-08-17 21:18:41.597844','2011/08/17/23_18_41_593_mccoytyner.JPG','JPG');
INSERT INTO "images" VALUES(3,'image/jpeg','ana_1.jpg',1242647,2848,2136,'2011-08-18 12:02:37.730495','2011-08-18 12:02:37.730495','2011/08/18/14_02_37_655_ana_1.jpg','jpg');
CREATE TABLE "page_parts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "page_id" integer, "title" varchar(255), "body" text, "position" integer, "created_at" datetime, "updated_at" datetime);
INSERT INTO "page_parts" VALUES(1,1,'Body','<p>Welcome to our site. This is just a place holder page while we gather our content.</p>',0,'2011-08-17 12:26:32.760897','2011-08-18 12:43:21.231645');
INSERT INTO "page_parts" VALUES(2,1,'Side Body','<p>This is home''s side body</p>',1,'2011-08-17 12:26:32.784074','2011-08-18 12:43:21.255128');
INSERT INTO "page_parts" VALUES(3,2,'Body','<h2>Mi dispiace, c''è un problema...</h2>
<p>La pagina richiesta non è stata trovata.</p>
<p><a title="Home" href="/it/">Ritorna alla Home</a>
</p>',0,'2011-08-17 12:26:32.818064','2011-08-17 13:04:52.824635');
INSERT INTO "page_parts" VALUES(4,3,'Body','<p>Questa è solo una pagina d''esempio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus. Integer interdum purus id erat. Duis nec velit vitae dolor mattis euismod. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse pellentesque dignissim lacus. Nulla semper euismod arcu. Suspendisse egestas, erat a consectetur dapibus, felis orci cursus eros, et sollicitudin purus urna et metus. Integer eget est sed nunc euismod vestibulum. Integer nulla dui, tristique in, euismod et, interdum imperdiet, enim. Mauris at lectus. Sed egestas tortor nec mi.</p>',0,'2011-08-17 12:26:32.841370','2011-08-17 13:08:39.738389');
INSERT INTO "page_parts" VALUES(5,3,'Side Body','',1,'2011-08-17 12:26:32.846293','2011-08-17 13:08:39.754168');
INSERT INTO "page_parts" VALUES(6,4,'Body','',0,'2011-08-17 13:17:31.314079','2011-08-17 13:19:24.087846');
INSERT INTO "page_parts" VALUES(7,4,'Side Body','',1,'2011-08-17 13:17:31.340214','2011-08-17 13:19:24.168015');
INSERT INTO "page_parts" VALUES(8,5,'Body','<p>Conattaci. Usa il form qui sotto e ti risponderemo quanto prima.</p>',0,'2011-08-17 13:33:12.837625','2011-08-17 13:38:52.394868');
INSERT INTO "page_parts" VALUES(9,5,'Side Body','<p>F5lab di Matteo Folin</p>
<p>Via Carlo Combi, 17</p>
<p>34143 Trieste, Italy</p>',1,'2011-08-17 13:33:12.903903','2011-08-17 13:38:52.477468');
INSERT INTO "page_parts" VALUES(10,6,'Body','<p>Abbiamo ricevuto la tua richiesta e ti risponderemo quanto prima.</p>
<p><a href="/">Ritorna alla home page</a>
</p>',0,'2011-08-17 13:33:12.979647','2011-08-17 13:42:02.134704');
INSERT INTO "page_parts" VALUES(11,7,'Body','<p>We respect your privacy. We do not market, rent or sell our email list to any outside parties.</p>
<p>We need your e-mail address so that we can ensure that the people using our forms are bona fide. It also allows us to send you e-mail newsletters and other communications, if you opt-in. Your postal address is required in order to send you information and pricing, if you request it.</p>
<p>Please call us at ... if you have any questions or concerns.</p>',0,'2011-08-17 13:33:13.017342','2011-08-17 20:40:31.299018');
INSERT INTO "page_parts" VALUES(12,8,'Body','',0,'2011-08-17 20:41:36.509437','2011-08-17 20:43:34.218402');
INSERT INTO "page_parts" VALUES(13,8,'Side Body','',1,'2011-08-17 20:41:36.595587','2011-08-17 20:43:34.227072');
INSERT INTO "page_parts" VALUES(14,9,'Body',NULL,NULL,'2011-08-18 09:42:10.207438','2011-08-18 09:42:10.207438');
INSERT INTO "page_parts" VALUES(15,9,'Side Body',NULL,NULL,'2011-08-18 09:42:10.304106','2011-08-18 09:42:10.304106');
INSERT INTO "page_parts" VALUES(16,10,'Body','',0,'2011-08-18 11:53:51.667077','2011-08-18 12:04:19.943024');
INSERT INTO "page_parts" VALUES(17,10,'Side Body','',1,'2011-08-18 11:53:51.742627','2011-08-18 12:04:20.016988');
CREATE TABLE "page_part_translations" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "page_part_id" integer, "locale" varchar(255), "body" text, "created_at" datetime, "updated_at" datetime);
INSERT INTO "page_part_translations" VALUES(1,1,'en','<p>Welcome to our site. This is just a place holder page while we gather our content.</p>','2011-08-17 12:26:32.778456','2011-08-17 12:26:32.778456');
INSERT INTO "page_part_translations" VALUES(2,2,'en','<p>This is home''s side body</p>','2011-08-17 12:26:32.786326','2011-08-18 12:43:21.259885');
INSERT INTO "page_part_translations" VALUES(3,3,'en','<h2>Sorry, there was a problem...</h2><p>The page you requested was not found.</p><p><a href=''/''>Return to the home page</a></p>','2011-08-17 12:26:32.820345','2011-08-17 12:26:32.820345');
INSERT INTO "page_part_translations" VALUES(4,4,'en','<p>This is just a standard text page example. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus.

Integer interdum purus id erat. Duis nec velit vitae dolor mattis euismod. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse pellentesque dignissim lacus. Nulla semper euismod arcu. Suspendisse egestas, erat a consectetur dapibus, felis orci cursus eros, et sollicitudin purus urna et metus. Integer eget est sed nunc euismod vestibulum. Integer nulla dui, tristique in, euismod et, interdum imperdiet, enim. Mauris at lectus. Sed egestas tortor nec mi.</p>','2011-08-17 12:26:32.843584','2011-08-17 12:26:32.843584');
INSERT INTO "page_part_translations" VALUES(5,5,'en','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus fringilla nisi a elit. Duis ultricies orci ut arcu. Ut ac nibh. Duis blandit rhoncus magna. Pellentesque semper risus ut magna. Etiam pulvinar tellus eget diam. Morbi blandit. Donec pulvinar mauris at ligula. Sed pellentesque, ipsum id congue molestie, lectus risus egestas pede, ac viverra diam lacus ac urna. Aenean elit.</p>','2011-08-17 12:26:32.849166','2011-08-17 12:26:32.849166');
INSERT INTO "page_part_translations" VALUES(6,1,'it','<p>Questa è la home del sito di prova di F5lab in RfineryCMS.</p>','2011-08-17 13:01:31.676311','2011-08-17 13:01:31.676311');
INSERT INTO "page_part_translations" VALUES(7,2,'it','<p>Questa è il side body della home</p>
<br />','2011-08-17 13:01:31.687503','2011-08-18 12:42:33.424496');
INSERT INTO "page_part_translations" VALUES(8,3,'it','<h2>Mi dispiace, c''è un problema...</h2>
<p>La pagina richiesta non è stata trovata.</p>
<p><a title="Home" href="/it/">Ritorna alla Home</a>
</p>','2011-08-17 13:02:39.733885','2011-08-17 13:04:52.831416');
INSERT INTO "page_part_translations" VALUES(9,4,'it','<p>Questa è solo una pagina d''esempio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus. Integer interdum purus id erat. Duis nec velit vitae dolor mattis euismod. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse pellentesque dignissim lacus. Nulla semper euismod arcu. Suspendisse egestas, erat a consectetur dapibus, felis orci cursus eros, et sollicitudin purus urna et metus. Integer eget est sed nunc euismod vestibulum. Integer nulla dui, tristique in, euismod et, interdum imperdiet, enim. Mauris at lectus. Sed egestas tortor nec mi.</p>','2011-08-17 13:08:39.746618','2011-08-17 13:08:39.746618');
INSERT INTO "page_part_translations" VALUES(10,5,'it','','2011-08-17 13:08:39.757458','2011-08-17 13:08:39.757458');
INSERT INTO "page_part_translations" VALUES(11,6,'en','','2011-08-17 13:17:31.333452','2011-08-17 13:19:24.164715');
INSERT INTO "page_part_translations" VALUES(12,7,'en','','2011-08-17 13:17:31.342867','2011-08-17 13:19:24.170420');
INSERT INTO "page_part_translations" VALUES(13,6,'it','','2011-08-17 13:19:13.495328','2011-08-17 13:19:13.495328');
INSERT INTO "page_part_translations" VALUES(14,7,'it','','2011-08-17 13:19:13.505540','2011-08-17 13:19:13.505540');
INSERT INTO "page_part_translations" VALUES(15,8,'en','<p>Get in touch with us. Just use the form below and we''ll get back to you as soon as we can.</p>','2011-08-17 13:33:12.897920','2011-08-17 13:33:12.897920');
INSERT INTO "page_part_translations" VALUES(16,9,'en','<p>F5lab di Matteo Folin</p>
<p>Via Carlo Combi, 17</p>
<p>34143 Trieste, Italy</p>','2011-08-17 13:33:12.906396','2011-08-17 13:38:25.852275');
INSERT INTO "page_part_translations" VALUES(17,10,'en','<p>We''ve received your inquiry and will get back to you with a response shortly.</p><p><a href=''/''>Return to the home page</a></p>','2011-08-17 13:33:12.982021','2011-08-17 13:33:12.982021');
INSERT INTO "page_part_translations" VALUES(18,11,'en','<p>We respect your privacy. We do not market, rent or sell our email list to any outside parties.</p>
<p>We need your e-mail address so that we can ensure that the people using our forms are bona fide. It also allows us to send you e-mail newsletters and other communications, if you opt-in. Your postal address is required in order to send you information and pricing, if you request it.</p>
<p>Please call us at ... if you have any questions or concerns.</p>','2011-08-17 13:33:13.019928','2011-08-17 20:40:31.307850');
INSERT INTO "page_part_translations" VALUES(19,8,'it','<p>Conattaci. Usa il form qui sotto e ti risponderemo quanto prima.</p>','2011-08-17 13:35:37.308519','2011-08-17 13:36:56.339829');
INSERT INTO "page_part_translations" VALUES(20,9,'it','<p>F5lab di Matteo Folin</p>
<p>Via Carlo Combi, 17</p>
<p>34143 Trieste, Italy</p>','2011-08-17 13:35:37.369144','2011-08-17 13:38:52.479415');
INSERT INTO "page_part_translations" VALUES(21,10,'it','<p>Abbiamo ricevuto la tua richiesta e ti risponderemo quanto prima.</p>
<p><a href="/">Ritorna alla home page</a>
</p>','2011-08-17 13:42:02.141769','2011-08-17 13:42:02.141769');
INSERT INTO "page_part_translations" VALUES(22,11,'it','','2011-08-17 20:39:39.833056','2011-08-17 20:39:39.833056');
INSERT INTO "page_part_translations" VALUES(23,12,'it','','2011-08-17 20:41:36.534143','2011-08-17 20:41:36.534143');
INSERT INTO "page_part_translations" VALUES(24,13,'it','','2011-08-17 20:41:36.597851','2011-08-17 20:41:36.597851');
INSERT INTO "page_part_translations" VALUES(25,12,'en','','2011-08-17 20:42:30.443926','2011-08-17 20:42:30.443926');
INSERT INTO "page_part_translations" VALUES(26,13,'en','','2011-08-17 20:42:30.456594','2011-08-17 20:42:30.456594');
INSERT INTO "page_part_translations" VALUES(27,14,'en',NULL,'2011-08-18 09:42:10.295070','2011-08-18 09:42:10.295070');
INSERT INTO "page_part_translations" VALUES(28,15,'en',NULL,'2011-08-18 09:42:10.308747','2011-08-18 09:42:10.308747');
INSERT INTO "page_part_translations" VALUES(29,16,'en','','2011-08-18 11:53:51.735844','2011-08-18 12:04:20.014528');
INSERT INTO "page_part_translations" VALUES(30,17,'en','','2011-08-18 11:53:51.744981','2011-08-18 12:04:20.019203');
INSERT INTO "page_part_translations" VALUES(31,16,'it','','2011-08-18 12:03:56.656021','2011-08-18 12:03:56.656021');
INSERT INTO "page_part_translations" VALUES(32,17,'it','','2011-08-18 12:03:56.690611','2011-08-18 12:03:56.690611');
CREATE TABLE "pages" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "parent_id" integer, "position" integer, "path" varchar(255), "created_at" datetime, "updated_at" datetime, "show_in_menu" boolean DEFAULT 't', "link_url" varchar(255), "menu_match" varchar(255), "deletable" boolean DEFAULT 't', "custom_title_type" varchar(255) DEFAULT 'none', "draft" boolean DEFAULT 'f', "skip_to_first_child" boolean DEFAULT 'f', "lft" integer, "rgt" integer, "depth" integer);
INSERT INTO "pages" VALUES(1,NULL,0,NULL,'2011-08-17 12:26:32.610914','2011-08-18 12:43:21.216385','t','/',NULL,'f','none','f','f',1,4,NULL);
INSERT INTO "pages" VALUES(2,1,0,NULL,'2011-08-17 12:26:32.791860','2011-08-17 13:04:52.817993','f','','^/404$','f','none','f','f',2,3,NULL);
INSERT INTO "pages" VALUES(3,NULL,1,NULL,'2011-08-17 12:26:32.824821','2011-08-17 13:08:39.603347','t','',NULL,'t','none','f','f',5,6,NULL);
INSERT INTO "pages" VALUES(4,NULL,2,NULL,'2011-08-17 13:17:31.097176','2011-08-17 13:19:24.063162','t','/blog','^/blogs?(/|/.+?|)$','f','none','f','f',7,8,NULL);
INSERT INTO "pages" VALUES(5,NULL,3,NULL,'2011-08-17 13:33:12.613714','2011-08-17 13:38:52.386086','t','/contact','^/(inquiries|contact).*$','f','none','f','f',9,14,NULL);
INSERT INTO "pages" VALUES(6,5,0,NULL,'2011-08-17 13:33:12.914644','2011-08-17 13:42:02.100583','f','/contact/thank_you','^/(inquiries|contact)/thank_you$','f','none','f','f',10,11,NULL);
INSERT INTO "pages" VALUES(7,5,1,NULL,'2011-08-17 13:33:12.990306','2011-08-17 20:40:31.288826','f','',NULL,'t','none','f','f',12,13,NULL);
INSERT INTO "pages" VALUES(8,NULL,4,NULL,'2011-08-17 20:41:36.427217','2011-08-17 20:43:34.212343','f','/search',NULL,'t','none','f','f',15,16,NULL);
INSERT INTO "pages" VALUES(10,NULL,5,NULL,'2011-08-18 11:53:51.411512','2011-08-18 12:04:19.925757','t','/portfolio_items','^/portfolio_items(\/|\/.+?|)$','f','none','f','f',17,18,NULL);
CREATE TABLE "seo_meta" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "seo_meta_id" integer, "seo_meta_type" varchar(255), "browser_title" varchar(255), "meta_keywords" varchar(255), "meta_description" text, "created_at" datetime, "updated_at" datetime);
INSERT INTO "seo_meta" VALUES(1,1,'Page::Translation','','','','2011-08-17 12:26:34.436490','2011-08-17 21:19:37.554543');
INSERT INTO "seo_meta" VALUES(2,2,'Page::Translation',NULL,NULL,NULL,'2011-08-17 12:26:34.442732','2011-08-17 12:26:34.442732');
INSERT INTO "seo_meta" VALUES(3,3,'Page::Translation',NULL,NULL,NULL,'2011-08-17 12:26:34.445072','2011-08-17 12:26:34.445072');
INSERT INTO "seo_meta" VALUES(4,4,'Page::Translation','','','','2011-08-17 13:01:31.593620','2011-08-17 13:01:31.593620');
INSERT INTO "seo_meta" VALUES(5,5,'Page::Translation','','','','2011-08-17 13:02:39.648681','2011-08-17 13:02:39.648681');
INSERT INTO "seo_meta" VALUES(6,6,'Page::Translation','','','','2011-08-17 13:08:39.616949','2011-08-17 13:08:39.616949');
INSERT INTO "seo_meta" VALUES(7,7,'Page::Translation','','','','2011-08-17 13:17:31.202491','2011-08-17 13:19:13.508524');
INSERT INTO "seo_meta" VALUES(8,8,'Page::Translation','','','','2011-08-17 13:17:31.212267','2011-08-17 13:19:24.173491');
INSERT INTO "seo_meta" VALUES(9,1,'BlogPost','','','','2011-08-17 13:21:42.051721','2011-08-17 13:21:42.051721');
INSERT INTO "seo_meta" VALUES(10,9,'Page::Translation','','','','2011-08-17 13:33:12.732097','2011-08-17 13:35:37.371472');
INSERT INTO "seo_meta" VALUES(11,10,'Page::Translation','','','','2011-08-17 13:33:12.740923','2011-08-17 13:38:25.854991');
INSERT INTO "seo_meta" VALUES(12,11,'Page::Translation','','','','2011-08-17 13:33:12.917856','2011-08-17 13:42:02.222803');
INSERT INTO "seo_meta" VALUES(13,12,'Page::Translation',NULL,NULL,NULL,'2011-08-17 13:33:12.920951','2011-08-17 13:33:12.920951');
INSERT INTO "seo_meta" VALUES(14,13,'Page::Translation','','','','2011-08-17 13:33:12.993223','2011-08-17 20:39:39.907707');
INSERT INTO "seo_meta" VALUES(15,14,'Page::Translation','','','','2011-08-17 13:33:12.996298','2011-08-17 20:40:31.312616');
INSERT INTO "seo_meta" VALUES(16,15,'Page::Translation','','','','2011-08-17 20:41:36.440084','2011-08-17 20:41:36.440084');
INSERT INTO "seo_meta" VALUES(17,16,'Page::Translation','','','','2011-08-17 20:42:30.321849','2011-08-17 20:42:30.321849');
INSERT INTO "seo_meta" VALUES(18,17,'Page::Translation',NULL,NULL,NULL,'2011-08-18 09:42:10.017337','2011-08-18 09:42:10.017337');
INSERT INTO "seo_meta" VALUES(19,18,'Page::Translation',NULL,NULL,NULL,'2011-08-18 09:42:10.025742','2011-08-18 09:42:10.025742');
INSERT INTO "seo_meta" VALUES(20,19,'Page::Translation','','','','2011-08-18 11:53:51.485237','2011-08-18 12:03:56.693930');
INSERT INTO "seo_meta" VALUES(21,20,'Page::Translation','','','','2011-08-18 11:53:51.494139','2011-08-18 12:04:20.021603');
CREATE TABLE "page_translations" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "page_id" integer, "locale" varchar(255), "title" varchar(255), "custom_title" varchar(255), "created_at" datetime, "updated_at" datetime);
INSERT INTO "page_translations" VALUES(1,1,'en','Home','','2011-08-17 12:26:32.665203','2011-08-17 21:19:37.518665');
INSERT INTO "page_translations" VALUES(2,2,'en','Page not found',NULL,'2011-08-17 12:26:32.793661','2011-08-17 12:26:32.796425');
INSERT INTO "page_translations" VALUES(3,3,'en','About',NULL,'2011-08-17 12:26:32.826721','2011-08-17 12:26:32.829300');
INSERT INTO "page_translations" VALUES(4,1,'it','Home','','2011-08-17 13:01:31.587817','2011-08-17 13:01:31.658526');
INSERT INTO "page_translations" VALUES(5,2,'it','Pagina non trovata','','2011-08-17 13:02:39.642370','2011-08-17 13:02:39.716688');
INSERT INTO "page_translations" VALUES(6,3,'it','About','','2011-08-17 13:08:39.608360','2011-08-17 13:08:39.627112');
INSERT INTO "page_translations" VALUES(7,4,'it','Blog','','2011-08-17 13:17:31.118243','2011-08-17 13:19:13.413259');
INSERT INTO "page_translations" VALUES(8,4,'en','Blog','','2011-08-17 13:17:31.209905','2011-08-17 13:19:24.068301');
INSERT INTO "page_translations" VALUES(9,5,'it','Contattaci','','2011-08-17 13:33:12.707906','2011-08-17 13:35:37.277512');
INSERT INTO "page_translations" VALUES(10,5,'en','Contact','','2011-08-17 13:33:12.739413','2011-08-17 13:38:25.825416');
INSERT INTO "page_translations" VALUES(11,6,'it','Grazie','','2011-08-17 13:33:12.916235','2011-08-17 13:42:02.121297');
INSERT INTO "page_translations" VALUES(12,6,'en','Thank You',NULL,'2011-08-17 13:33:12.919692','2011-08-17 13:33:12.919692');
INSERT INTO "page_translations" VALUES(13,7,'it','Privacy','','2011-08-17 13:33:12.991762','2011-08-17 20:39:39.788493');
INSERT INTO "page_translations" VALUES(14,7,'en','Privacy Policy','','2011-08-17 13:33:12.995027','2011-08-17 20:40:31.294184');
INSERT INTO "page_translations" VALUES(15,8,'it','Ricerca','','2011-08-17 20:41:36.434611','2011-08-17 20:41:36.502438');
INSERT INTO "page_translations" VALUES(16,8,'en','Search','','2011-08-17 20:42:30.315697','2011-08-17 20:42:30.332381');
INSERT INTO "page_translations" VALUES(17,9,'it',NULL,NULL,'2011-08-18 09:42:09.930955','2011-08-18 09:42:09.930955');
INSERT INTO "page_translations" VALUES(18,9,'en','Portfolio Items',NULL,'2011-08-18 09:42:10.023996','2011-08-18 09:42:10.023996');
INSERT INTO "page_translations" VALUES(19,10,'it','Portfolio','','2011-08-18 11:53:51.456586','2011-08-18 12:03:56.550710');
INSERT INTO "page_translations" VALUES(20,10,'en','Portfolio','','2011-08-18 11:53:51.492564','2011-08-18 12:04:19.930321');
CREATE TABLE "resources" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "file_mime_type" varchar(255), "file_name" varchar(255), "file_size" integer, "created_at" datetime, "updated_at" datetime, "file_uid" varchar(255), "file_ext" varchar(255));
CREATE TABLE "blog_posts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255), "body" text, "draft" boolean, "published_at" datetime, "created_at" datetime, "updated_at" datetime, "user_id" integer, "cached_slug" varchar(255), "custom_url" varchar(255), "custom_teaser" text);
INSERT INTO "blog_posts" VALUES(1,'Questo è il mio primo post on RefineryCMS - Blog','<p>Bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla </p>
<p>Di Matteo Folin</p>','f','2011-08-17 13:20:00.000000','2011-08-17 13:21:41.761741','2011-08-17 21:08:39.935944',1,'questo-è-il-mio-primo-post-on-refinerycms-blog','','<p>Teaser ? What''s teaser ?Bla bla bla bla bla bla bla bla bla bla bla</p>
<br />');
CREATE TABLE "blog_comments" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "blog_post_id" integer, "spam" boolean, "name" varchar(255), "email" varchar(255), "body" text, "state" varchar(255), "created_at" datetime, "updated_at" datetime);
INSERT INTO "blog_comments" VALUES(1,1,'f','marko','m.khan@etardi.si','Questo è spam ! Yesss!','rejected','2011-08-17 22:13:41.069426','2011-08-17 22:14:20.471502');
CREATE TABLE "blog_categories" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255), "created_at" datetime, "updated_at" datetime, "cached_slug" varchar(255));
CREATE TABLE "blog_categories_blog_posts" ("blog_category_id" integer, "blog_post_id" integer);
CREATE TABLE "tags" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255));
INSERT INTO "tags" VALUES(1,'test');
CREATE TABLE "taggings" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "tag_id" integer, "taggable_id" integer, "taggable_type" varchar(255), "tagger_id" integer, "tagger_type" varchar(255), "context" varchar(255), "created_at" datetime);
INSERT INTO "taggings" VALUES(1,1,1,'BlogPost',NULL,NULL,'tags','2011-08-17 13:22:18.017172');
CREATE TABLE "inquiry_settings" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "value" text, "destroyable" boolean, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "inquiries" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "email" varchar(255), "phone" varchar(255), "message" text, "created_at" datetime, "updated_at" datetime, "spam" boolean DEFAULT 'f');
INSERT INTO "inquiries" VALUES(1,'matteo','matteo.folin@gmail.com','040313549','Test email richiesta','2011-08-17 13:40:16.972664','2011-08-17 13:40:16.972664','f');
CREATE TABLE "image_pages" ("image_id" integer, "page_id" integer, "position" integer, "caption" text);
INSERT INTO "image_pages" VALUES(1,1,0,'1');
INSERT INTO "image_pages" VALUES(2,1,1,'2');
CREATE TABLE "portfolio_items" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255), "description" text, "screenshot_id" integer, "link" varchar(255), "published_at" datetime, "position" integer, "created_at" datetime, "updated_at" datetime);
INSERT INTO "portfolio_items" VALUES(1,'Test portfolio item','<p>Questo è solo un test.</p>',3,'f5lab.rhx.it','2011-08-18 12:01:00.000000',0,'2011-08-18 12:03:13.971022','2011-08-18 12:03:13.971022');
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE UNIQUE INDEX "index_slugs_on_n_s_s_and_s" ON "slugs" ("name", "sluggable_type", "scope", "sequence");
CREATE INDEX "index_slugs_on_sluggable_id" ON "slugs" ("sluggable_id");
CREATE INDEX "index_slugs_on_locale" ON "slugs" ("locale");
CREATE INDEX "index_refinery_settings_on_name" ON "refinery_settings" ("name");
CREATE INDEX "index_user_plugins_on_title" ON "user_plugins" ("name");
CREATE UNIQUE INDEX "index_unique_user_plugins" ON "user_plugins" ("user_id", "name");
CREATE INDEX "index_roles_users_on_role_id_and_user_id" ON "roles_users" ("role_id", "user_id");
CREATE INDEX "index_roles_users_on_user_id_and_role_id" ON "roles_users" ("user_id", "role_id");
CREATE INDEX "index_users_on_id" ON "users" ("id");
CREATE INDEX "index_page_parts_on_id" ON "page_parts" ("id");
CREATE INDEX "index_page_parts_on_page_id" ON "page_parts" ("page_id");
CREATE INDEX "index_page_part_translations_on_page_part_id" ON "page_part_translations" ("page_part_id");
CREATE INDEX "index_pages_on_depth" ON "pages" ("depth");
CREATE INDEX "index_pages_on_id" ON "pages" ("id");
CREATE INDEX "index_pages_on_lft" ON "pages" ("lft");
CREATE INDEX "index_pages_on_parent_id" ON "pages" ("parent_id");
CREATE INDEX "index_pages_on_rgt" ON "pages" ("rgt");
CREATE INDEX "index_seo_meta_on_id" ON "seo_meta" ("id");
CREATE INDEX "index_seo_meta_on_seo_meta_id_and_seo_meta_type" ON "seo_meta" ("seo_meta_id", "seo_meta_type");
CREATE INDEX "index_page_translations_on_page_id" ON "page_translations" ("page_id");
CREATE INDEX "index_blog_posts_on_id" ON "blog_posts" ("id");
CREATE INDEX "index_blog_comments_on_id" ON "blog_comments" ("id");
CREATE INDEX "index_blog_categories_on_id" ON "blog_categories" ("id");
CREATE INDEX "index_blog_categories_blog_posts_on_bc_and_bp" ON "blog_categories_blog_posts" ("blog_category_id", "blog_post_id");
CREATE INDEX "index_taggings_on_tag_id" ON "taggings" ("tag_id");
CREATE INDEX "index_taggings_on_taggable_id_and_taggable_type_and_context" ON "taggings" ("taggable_id", "taggable_type", "context");
CREATE INDEX "index_inquiries_on_id" ON "inquiries" ("id");
CREATE INDEX "index_image_pages_on_image_id" ON "image_pages" ("image_id");
CREATE INDEX "index_image_pages_on_page_id" ON "image_pages" ("page_id");
CREATE INDEX "index_portfolio_items_on_id" ON "portfolio_items" ("id");
COMMIT;
