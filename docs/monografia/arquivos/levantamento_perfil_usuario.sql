#------------------------------------------
# LimeSurvey Database Dump of `limesurvey`
# Date of Dump: 20-Jun-2009
#------------------------------------------


#------------------------------------------
# Table definition for lime_answers
#------------------------------------------
DROP TABLE IF EXISTS lime_answers;

CREATE TABLE lime_answers (
    `qid` int(11) DEFAULT '0' NOT NULL,
    `code` varchar(5) DEFAULT '' NOT NULL,
    `answer` text DEFAULT '' NOT NULL,
    `default_value` char(1) DEFAULT 'N' NOT NULL,
    `sortorder` int(11) DEFAULT '' NOT NULL,
    `language` varchar(20) DEFAULT 'en' NOT NULL,
   PRIMARY KEY (qid, code, language),
   KEY answers_idx2 (sortorder)
);


#------------------------------------------
# Table data for lime_answers
#------------------------------------------
INSERT INTO lime_answers VALUES("6","3","Fundação","N","3","pt");
INSERT INTO lime_answers VALUES("6","2","Pública","N","2","pt");
INSERT INTO lime_answers VALUES("6","1","Particular","N","1","pt");
INSERT INTO lime_answers VALUES("8","1","Não uso","N","1","pt");
INSERT INTO lime_answers VALUES("9","3","Acompanhante","N","3","pt");
INSERT INTO lime_answers VALUES("9","2","Orientador / Co-orientador","N","2","pt");
INSERT INTO lime_answers VALUES("9","1","Finalista","N","1","pt");
INSERT INTO lime_answers VALUES("9","4","Visitante","N","4","pt");
INSERT INTO lime_answers VALUES("12","4","Em espaços públicos","N","4","pt");
INSERT INTO lime_answers VALUES("11","1","Ensino fundamental","N","1","pt");
INSERT INTO lime_answers VALUES("11","2","Ensino médio","N","2","pt");
INSERT INTO lime_answers VALUES("11","3","Ensino técnico","N","3","pt");
INSERT INTO lime_answers VALUES("11","4","Ensino superior","N","4","pt");
INSERT INTO lime_answers VALUES("12","2","Na escola","N","2","pt");
INSERT INTO lime_answers VALUES("12","3","Na lan-house","N","3","pt");
INSERT INTO lime_answers VALUES("12","1","Em casa","N","1","pt");
INSERT INTO lime_answers VALUES("12","5","Outros","N","5","pt");
INSERT INTO lime_answers VALUES("14","4","Video-game","N","4","pt");
INSERT INTO lime_answers VALUES("14","2","Notebook / Laptop","N","2","pt");
INSERT INTO lime_answers VALUES("14","3","Celular / Smartphone / Palmtop","N","3","pt");
INSERT INTO lime_answers VALUES("14","1","Computador","N","1","pt");
INSERT INTO lime_answers VALUES("14","5","Outros","N","5","pt");
INSERT INTO lime_answers VALUES("18","3","Facebook","N","3","pt");
INSERT INTO lime_answers VALUES("16","10","Outros","N","10","pt");
INSERT INTO lime_answers VALUES("16","8","Bate-papo","N","8","pt");
INSERT INTO lime_answers VALUES("16","9","Vídeos","N","9","pt");
INSERT INTO lime_answers VALUES("16","7","Sites de relacionamento","N","7","pt");
INSERT INTO lime_answers VALUES("16","6","M.I.","N","6","pt");
INSERT INTO lime_answers VALUES("16","5","Portais/Notícias","N","5","pt");
INSERT INTO lime_answers VALUES("16","4","Fóruns","N","4","pt");
INSERT INTO lime_answers VALUES("16","3","Blogs","N","3","pt");
INSERT INTO lime_answers VALUES("16","2","Jogos","N","2","pt");
INSERT INTO lime_answers VALUES("16","1","E-mail","N","1","pt");
INSERT INTO lime_answers VALUES("18","4","Twitter","N","4","pt");
INSERT INTO lime_answers VALUES("18","5","Não uso sites de relacionamento","N","5","pt");
INSERT INTO lime_answers VALUES("18","2","MySpace","N","2","pt");
INSERT INTO lime_answers VALUES("18","1","Orkut","N","1","pt");
INSERT INTO lime_answers VALUES("19","2","É possível que um grupo trabalhe num mesmo projeto sem estar na mesma cidade, pela Internet","N","2","pt");
INSERT INTO lime_answers VALUES("19","3","A idéia de uma feira de ciências virtual na internet é interessante","N","3","pt");
INSERT INTO lime_answers VALUES("19","1","Acho importante poder manter contato com os outros participantes da feira após o fim da Febrace","N","1","pt");
INSERT INTO lime_answers VALUES("6","1","Particular","N","1","pt-BR");
INSERT INTO lime_answers VALUES("6","2","Pública","N","2","pt-BR");
INSERT INTO lime_answers VALUES("6","3","Fundação","N","3","pt-BR");
INSERT INTO lime_answers VALUES("8","1","Não uso","N","1","pt-BR");
INSERT INTO lime_answers VALUES("9","1","Finalista","N","1","pt-BR");
INSERT INTO lime_answers VALUES("9","2","Orientador / Co-orientador","N","2","pt-BR");
INSERT INTO lime_answers VALUES("9","3","Acompanhante","N","3","pt-BR");
INSERT INTO lime_answers VALUES("9","4","Visitante","N","4","pt-BR");
INSERT INTO lime_answers VALUES("11","1","Ensino fundamental","N","1","pt-BR");
INSERT INTO lime_answers VALUES("11","2","Ensino médio","N","2","pt-BR");
INSERT INTO lime_answers VALUES("11","3","Ensino técnico","N","3","pt-BR");
INSERT INTO lime_answers VALUES("11","4","Ensino superior","N","4","pt-BR");
INSERT INTO lime_answers VALUES("12","1","Em casa","N","1","pt-BR");
INSERT INTO lime_answers VALUES("12","2","Na escola","N","2","pt-BR");
INSERT INTO lime_answers VALUES("12","3","Na lan-house","N","3","pt-BR");
INSERT INTO lime_answers VALUES("12","4","Em espaços públicos","N","4","pt-BR");
INSERT INTO lime_answers VALUES("12","5","Outros","N","5","pt-BR");
INSERT INTO lime_answers VALUES("14","1","Computador","N","1","pt-BR");
INSERT INTO lime_answers VALUES("14","2","Notebook / Laptop","N","2","pt-BR");
INSERT INTO lime_answers VALUES("14","3","Celular / Smartphone / Palmtop","N","3","pt-BR");
INSERT INTO lime_answers VALUES("14","4","Video-game","N","4","pt-BR");
INSERT INTO lime_answers VALUES("14","5","Outros","N","5","pt-BR");
INSERT INTO lime_answers VALUES("16","1","E-mail","N","1","pt-BR");
INSERT INTO lime_answers VALUES("16","10","Outros","N","10","pt-BR");
INSERT INTO lime_answers VALUES("16","2","Jogos","N","2","pt-BR");
INSERT INTO lime_answers VALUES("16","3","Blogs","N","3","pt-BR");
INSERT INTO lime_answers VALUES("16","4","Fóruns","N","4","pt-BR");
INSERT INTO lime_answers VALUES("16","5","Portais/Notícias","N","5","pt-BR");
INSERT INTO lime_answers VALUES("16","6","M.I.","N","6","pt-BR");
INSERT INTO lime_answers VALUES("16","7","Sites de relacionamento","N","7","pt-BR");
INSERT INTO lime_answers VALUES("16","8","Bate-papo","N","8","pt-BR");
INSERT INTO lime_answers VALUES("16","9","Vídeos","N","9","pt-BR");
INSERT INTO lime_answers VALUES("18","1","Orkut","N","1","pt-BR");
INSERT INTO lime_answers VALUES("18","2","MySpace","N","2","pt-BR");
INSERT INTO lime_answers VALUES("18","3","Facebook","N","3","pt-BR");
INSERT INTO lime_answers VALUES("18","4","Twitter","N","4","pt-BR");
INSERT INTO lime_answers VALUES("18","5","Não uso sites de relacionamento","N","5","pt-BR");
INSERT INTO lime_answers VALUES("19","1","Acho importante poder manter contato com os outros participantes da feira após o fim da Febrace","N","1","pt-BR");
INSERT INTO lime_answers VALUES("19","2","É possível que um grupo trabalhe num mesmo projeto sem estar na mesma cidade, pela Internet","N","2","pt-BR");
INSERT INTO lime_answers VALUES("19","3","A idéia de uma feira de ciências virtual na internet é interessante","N","3","pt-BR");



#------------------------------------------
# Table definition for lime_assessments
#------------------------------------------
DROP TABLE IF EXISTS lime_assessments;

CREATE TABLE lime_assessments (
    `id` int(11) NOT NULL auto_increment,
    `sid` int(11) DEFAULT '0' NOT NULL,
    `scope` varchar(5) DEFAULT '' NOT NULL,
    `gid` int(11) DEFAULT '0' NOT NULL,
    `name` text DEFAULT '' NOT NULL,
    `minimum` varchar(50) DEFAULT '' NOT NULL,
    `maximum` varchar(50) DEFAULT '' NOT NULL,
    `message` text DEFAULT '' NOT NULL,
    `link` text DEFAULT '' NOT NULL,
   PRIMARY KEY (id),
   KEY assessments_idx2 (sid),
   KEY assessments_idx3 (gid)
);


#------------------------------------------
# Table data for lime_assessments
#------------------------------------------



#------------------------------------------
# Table definition for lime_conditions
#------------------------------------------
DROP TABLE IF EXISTS lime_conditions;

CREATE TABLE lime_conditions (
    `cid` int(11) NOT NULL auto_increment,
    `qid` int(11) DEFAULT '0' NOT NULL,
    `scenario` int(11) DEFAULT '1' NOT NULL,
    `cqid` int(11) DEFAULT '0' NOT NULL,
    `cfieldname` varchar(50) DEFAULT '' NOT NULL,
    `method` char(2) DEFAULT '' NOT NULL,
    `value` varchar(255) DEFAULT '' NOT NULL,
   PRIMARY KEY (cid),
   KEY conditions_idx2 (qid),
   KEY conditions_idx3 (cqid)
);


#------------------------------------------
# Table data for lime_conditions
#------------------------------------------



#------------------------------------------
# Table definition for lime_groups
#------------------------------------------
DROP TABLE IF EXISTS lime_groups;

CREATE TABLE lime_groups (
    `gid` int(11) NOT NULL auto_increment,
    `sid` int(11) DEFAULT '0' NOT NULL,
    `group_name` varchar(100) DEFAULT '' NOT NULL,
    `group_order` int(11) DEFAULT '0' NOT NULL,
    `description` text,
    `language` varchar(20) DEFAULT 'en' NOT NULL,
   PRIMARY KEY (gid, language),
   KEY groups_idx2 (sid)
);


#------------------------------------------
# Table data for lime_groups
#------------------------------------------
INSERT INTO lime_groups VALUES("1","57346","Indentificação","0","","pt");
INSERT INTO lime_groups VALUES("2","57346","Perfil de uso da Internet","1","","pt");
INSERT INTO lime_groups VALUES("1","57346","Indentificação","0","","pt-BR");
INSERT INTO lime_groups VALUES("3","57346","Opinião","2","","pt");
INSERT INTO lime_groups VALUES("2","57346","Perfil de uso da Internet","1","","pt-BR");
INSERT INTO lime_groups VALUES("3","57346","Opinião","2","","pt-BR");



#------------------------------------------
# Table definition for lime_labels
#------------------------------------------
DROP TABLE IF EXISTS lime_labels;

CREATE TABLE lime_labels (
    `lid` int(11) DEFAULT '0' NOT NULL,
    `code` varchar(5) DEFAULT '' NOT NULL,
    `title` text,
    `sortorder` int(11) DEFAULT '' NOT NULL,
    `language` varchar(20) DEFAULT 'en' NOT NULL,
   PRIMARY KEY (lid, sortorder, language),
   KEY ixcode (code)
);


#------------------------------------------
# Table data for lime_labels
#------------------------------------------
INSERT INTO lime_labels VALUES("2","1","Nunca","1","pt");
INSERT INTO lime_labels VALUES("1","1","Completo","1","pt");
INSERT INTO lime_labels VALUES("1","2","Cursando","2","pt");
INSERT INTO lime_labels VALUES("2","2","De vez em quando","2","pt");
INSERT INTO lime_labels VALUES("2","3","1 a 3 vezes por semana","3","pt");
INSERT INTO lime_labels VALUES("2","4","Todos os dias","4","pt");
INSERT INTO lime_labels VALUES("3","1","Discordo totalmente","1","pt");
INSERT INTO lime_labels VALUES("3","2","Discordo","2","pt");
INSERT INTO lime_labels VALUES("3","3","Neutro","3","pt");
INSERT INTO lime_labels VALUES("3","4","Concordo","4","pt");
INSERT INTO lime_labels VALUES("3","5","Concordo totalmente","5","pt");
INSERT INTO lime_labels VALUES("3","1","Discordo totalmente","1","pt-BR");
INSERT INTO lime_labels VALUES("3","2","Discordo","2","pt-BR");
INSERT INTO lime_labels VALUES("3","3","Neutro","3","pt-BR");
INSERT INTO lime_labels VALUES("3","4","Concordo","4","pt-BR");
INSERT INTO lime_labels VALUES("3","5","Concordo totalmente","5","pt-BR");
INSERT INTO lime_labels VALUES("1","1","Completo","1","pt-BR");
INSERT INTO lime_labels VALUES("1","2","Cursando","2","pt-BR");
INSERT INTO lime_labels VALUES("2","1","Nunca","1","pt-BR");
INSERT INTO lime_labels VALUES("2","2","De vez em quando","2","pt-BR");
INSERT INTO lime_labels VALUES("2","3","1 a 3 vezes por semana","3","pt-BR");
INSERT INTO lime_labels VALUES("2","4","Todos os dias","4","pt-BR");



#------------------------------------------
# Table definition for lime_labelsets
#------------------------------------------
DROP TABLE IF EXISTS lime_labelsets;

CREATE TABLE lime_labelsets (
    `lid` int(11) NOT NULL auto_increment,
    `label_name` varchar(100) DEFAULT '' NOT NULL,
    `languages` varchar(200) DEFAULT 'en',
   PRIMARY KEY (lid)
);


#------------------------------------------
# Table data for lime_labelsets
#------------------------------------------
INSERT INTO lime_labelsets VALUES("1","Escolaridade","pt-BR pt");
INSERT INTO lime_labelsets VALUES("2","Frequência","pt-BR pt");
INSERT INTO lime_labelsets VALUES("3","Concordância","pt-BR pt");



#------------------------------------------
# Table definition for lime_old_survey_57346_20090313184227
#------------------------------------------
DROP TABLE IF EXISTS lime_old_survey_57346_20090313184227;

CREATE TABLE lime_old_survey_57346_20090313184227 (
    `id` int(11) NOT NULL auto_increment,
    `submitdate` datetime,
    `startlanguage` varchar(20) DEFAULT '' NOT NULL,
    `57346X1X1` varchar(1),
    `57346X1X2` double,
    `57346X1X3` text,
    `57346X1X4` text,
    `57346X1X5` text,
    `57346X1X6` varchar(5),
    `57346X1X9` varchar(5),
    `57346X1X9other` text,
    `57346X1X111_1` text,
    `57346X1X111_2` text,
    `57346X1X112_1` text,
    `57346X1X112_2` text,
    `57346X1X113_1` text,
    `57346X1X113_2` text,
    `57346X1X114_1` text,
    `57346X1X114_2` text,
    `57346X2X8` varchar(5),
    `57346X2X8other` text,
    `57346X2X121` varchar(5),
    `57346X2X122` varchar(5),
    `57346X2X123` varchar(5),
    `57346X2X124` varchar(5),
    `57346X2X125` varchar(5),
    `57346X2X13` text,
    `57346X2X141` varchar(5),
    `57346X2X142` varchar(5),
    `57346X2X143` varchar(5),
    `57346X2X144` varchar(5),
    `57346X2X145` varchar(5),
    `57346X2X15` text,
    `57346X2X161` varchar(5),
    `57346X2X162` varchar(5),
    `57346X2X163` varchar(5),
    `57346X2X164` varchar(5),
    `57346X2X165` varchar(5),
    `57346X2X166` varchar(5),
    `57346X2X167` varchar(5),
    `57346X2X168` varchar(5),
    `57346X2X169` varchar(5),
    `57346X2X1610` varchar(5),
    `57346X2X17` text,
    `57346X2X181` varchar(5),
    `57346X2X182` varchar(5),
    `57346X2X183` varchar(5),
    `57346X2X184` varchar(5),
    `57346X2X185` varchar(5),
    `57346X2X18other` text,
    `57346X3X191` varchar(5),
    `57346X3X192` varchar(5),
    `57346X3X193` varchar(5),
    `57346X3X20` varchar(1),
    `57346X3X21` text,
    `57346X3X22` varchar(1),
    `57346X3X23` text,
    `57346X3X24` text,
   PRIMARY KEY (id)
);


#------------------------------------------
# Table data for lime_old_survey_57346_20090313184227
#------------------------------------------



#------------------------------------------
# Table definition for lime_old_tokens_57346_20090313184227
#------------------------------------------
DROP TABLE IF EXISTS lime_old_tokens_57346_20090313184227;

CREATE TABLE lime_old_tokens_57346_20090313184227 (
    `tid` int(11) NOT NULL auto_increment,
    `firstname` varchar(40),
    `lastname` varchar(40),
    `email` text,
    `emailstatus` text,
    `token` varchar(36),
    `language` varchar(25),
    `sent` varchar(17) DEFAULT 'N',
    `remindersent` varchar(17) DEFAULT 'N',
    `remindercount` int(11) DEFAULT '0',
    `completed` varchar(17) DEFAULT 'N',
    `attribute_1` varchar(100),
    `attribute_2` varchar(100),
    `mpid` int(11),
   PRIMARY KEY (tid),
   KEY lime_tokens_57346_idx (token)
);


#------------------------------------------
# Table data for lime_old_tokens_57346_20090313184227
#------------------------------------------



#------------------------------------------
# Table definition for lime_question_attributes
#------------------------------------------
DROP TABLE IF EXISTS lime_question_attributes;

CREATE TABLE lime_question_attributes (
    `qaid` int(11) NOT NULL auto_increment,
    `qid` int(11) DEFAULT '0' NOT NULL,
    `attribute` varchar(50),
    `value` varchar(20),
   PRIMARY KEY (qaid),
   KEY question_attributes_idx2 (qid)
);


#------------------------------------------
# Table data for lime_question_attributes
#------------------------------------------
INSERT INTO lime_question_attributes VALUES("2","11","multiflexible_checkbox","1");
INSERT INTO lime_question_attributes VALUES("3","8","other_replace_text","Uso. Nº de anos");
INSERT INTO lime_question_attributes VALUES("5","18","other_replace_text","Outros. Quais?");



#------------------------------------------
# Table definition for lime_questions
#------------------------------------------
DROP TABLE IF EXISTS lime_questions;

CREATE TABLE lime_questions (
    `qid` int(11) NOT NULL auto_increment,
    `sid` int(11) DEFAULT '0' NOT NULL,
    `gid` int(11) DEFAULT '0' NOT NULL,
    `type` char(1) DEFAULT 'T' NOT NULL,
    `title` varchar(20) DEFAULT '' NOT NULL,
    `question` text DEFAULT '' NOT NULL,
    `preg` text,
    `help` text,
    `other` char(1) DEFAULT 'N' NOT NULL,
    `mandatory` char(1),
    `lid` int(11) DEFAULT '0' NOT NULL,
    `lid1` int(11) DEFAULT '0' NOT NULL,
    `question_order` int(11) DEFAULT '' NOT NULL,
    `language` varchar(20) DEFAULT 'en' NOT NULL,
   PRIMARY KEY (qid, language),
   KEY questions_idx2 (sid),
   KEY questions_idx3 (gid),
   KEY questions_idx4 (type)
);


#------------------------------------------
# Table data for lime_questions
#------------------------------------------
INSERT INTO lime_questions VALUES("1","57346","1","G","1","Sexo<br />","","","N","N","0","0","0","pt");
INSERT INTO lime_questions VALUES("2","57346","1","N","2","Idade:<br />","","","N","N","0","0","1","pt");
INSERT INTO lime_questions VALUES("3","57346","1","S","3","Cidade:<br />","","","N","N","0","0","2","pt");
INSERT INTO lime_questions VALUES("4","57346","1","S","4","Estado:<br />","","","N","N","0","0","3","pt");
INSERT INTO lime_questions VALUES("5","57346","1","S","5","Escola:<br />","","","N","N","0","0","4","pt");
INSERT INTO lime_questions VALUES("6","57346","1","L","6","Tipo:<br />","","","N","N","0","0","5","pt");
INSERT INTO lime_questions VALUES("8","57346","2","L","1","Desde que idade voc&ecirc; usa computadores?<br />","","","Y","N","0","0","1","pt");
INSERT INTO lime_questions VALUES("9","57346","1","L","7","Voc&ecirc; &eacute;:<br />","","","Y","N","0","0","6","pt");
INSERT INTO lime_questions VALUES("14","57346","2","F","4","Com que frequ&ecirc;ncia voc&ecirc; utiliza os aparelhos abaixo para acessar a Internet<br />","","","N","N","2","0","4","pt");
INSERT INTO lime_questions VALUES("13","57346","2","S","3","Se voc&ecirc; respondeu &quot;Outros&quot; na pergunta acima, diga quais:<br />","","","N","N","0","0","3","pt");
INSERT INTO lime_questions VALUES("12","57346","2","F","2","Com que frequ&ecirc;ncia voc&ecirc; usa a Internet nesses locais?<br />","","","N","N","2","0","2","pt");
INSERT INTO lime_questions VALUES("11","57346","1",":","8","Qual a sua escolaridade?<br />","","","N","N","1","0","7","pt");
INSERT INTO lime_questions VALUES("15","57346","2","S","5","Se voc&ecirc; respondeu &quot;Outros&quot; na pergunta acima, diga quais:","","","N","N","0","0","5","pt");
INSERT INTO lime_questions VALUES("16","57346","2","F","6","Com que frequ&ecirc;ncia voc&ecirc; acessa esses servi&ccedil;os na Internet?<br />","","","N","N","2","0","6","pt");
INSERT INTO lime_questions VALUES("17","57346","2","S","7","Se voc&ecirc; respondeu &quot;Outros&quot; na pergunta acima, diga quais:","","","N","N","0","0","7","pt");
INSERT INTO lime_questions VALUES("18","57346","2","M","8","Quais sites de relacionamento voc&ecirc; usa?<br />","","","Y","N","0","0","8","pt");
INSERT INTO lime_questions VALUES("19","57346","3","F","1","D&ecirc; sua opini&atilde;o sobre as quest&otilde;es abaixo<br />","","","N","N","3","0","1","pt");
INSERT INTO lime_questions VALUES("20","57346","3","Y","2","Voc&ecirc; conhece o site da Febrace?<br />","","","N","N","0","0","2","pt");
INSERT INTO lime_questions VALUES("21","57346","3","T","3","Se sim, qual sua opini&atilde;o sobre ele?<br />","","","N","N","0","0","3","pt");
INSERT INTO lime_questions VALUES("22","57346","3","Y","4","Voc&ecirc; conhece o sistema de submiss&atilde;o de projetos online da Febrace?<br />","","","N","N","0","0","4","pt");
INSERT INTO lime_questions VALUES("23","57346","3","T","5","Se sim, qual sua opini&atilde;o sobre ele?<br />","","","N","N","0","0","5","pt");
INSERT INTO lime_questions VALUES("24","57346","3","T","6","H&aacute; mais alguma coisa que voc&ecirc; ache importante citar sobre seus interesses ou experi&ecirc;ncias na Internet? Se sim, descreva brevemente.<br />","","","N","N","0","0","6","pt");
INSERT INTO lime_questions VALUES("1","57346","1","G","1","Sexo<br />","","","N","N","0","0","0","pt-BR");
INSERT INTO lime_questions VALUES("2","57346","1","N","2","Idade:<br />","","","N","N","0","0","1","pt-BR");
INSERT INTO lime_questions VALUES("8","57346","2","L","1","Desde que idade voc&ecirc; usa computadores?<br />","","","Y","N","0","0","1","pt-BR");
INSERT INTO lime_questions VALUES("19","57346","3","F","1","D&ecirc; sua opini&atilde;o sobre as quest&otilde;es abaixo<br />","","","N","N","3","0","1","pt-BR");
INSERT INTO lime_questions VALUES("3","57346","1","S","3","Cidade:<br />","","","N","N","0","0","2","pt-BR");
INSERT INTO lime_questions VALUES("12","57346","2","F","2","Com que frequ&ecirc;ncia voc&ecirc; usa a Internet nesses locais?<br />","","","N","N","2","0","2","pt-BR");
INSERT INTO lime_questions VALUES("20","57346","3","Y","2","Voc&ecirc; conhece o site da Febrace?<br />","","","N","N","0","0","2","pt-BR");
INSERT INTO lime_questions VALUES("4","57346","1","S","4","Estado:<br />","","","N","N","0","0","3","pt-BR");
INSERT INTO lime_questions VALUES("13","57346","2","S","3","Se voc&ecirc; respondeu &quot;Outros&quot; na pergunta acima, diga quais:<br />","","","N","N","0","0","3","pt-BR");
INSERT INTO lime_questions VALUES("21","57346","3","T","3","Se sim, qual sua opini&atilde;o sobre ele?<br />","","","N","N","0","0","3","pt-BR");
INSERT INTO lime_questions VALUES("5","57346","1","S","5","Escola:<br />","","","N","N","0","0","4","pt-BR");
INSERT INTO lime_questions VALUES("14","57346","2","F","4","Com que frequ&ecirc;ncia voc&ecirc; utiliza os aparelhos abaixo para acessar a Internet<br />","","","N","N","2","0","4","pt-BR");
INSERT INTO lime_questions VALUES("22","57346","3","Y","4","Voc&ecirc; conhece o sistema de submiss&atilde;o de projetos online da Febrace?<br />","","","N","N","0","0","4","pt-BR");
INSERT INTO lime_questions VALUES("6","57346","1","L","6","Tipo:<br />","","","N","N","0","0","5","pt-BR");
INSERT INTO lime_questions VALUES("15","57346","2","S","5","Se voc&ecirc; respondeu &quot;Outros&quot; na pergunta acima, diga quais:","","","N","N","0","0","5","pt-BR");
INSERT INTO lime_questions VALUES("23","57346","3","T","5","Se sim, qual sua opini&atilde;o sobre ele?<br />","","","N","N","0","0","5","pt-BR");
INSERT INTO lime_questions VALUES("9","57346","1","L","7","Voc&ecirc; &eacute;:<br />","","","Y","N","0","0","6","pt-BR");
INSERT INTO lime_questions VALUES("16","57346","2","F","6","Com que frequ&ecirc;ncia voc&ecirc; acessa esses servi&ccedil;os na Internet?<br />","","","N","N","2","0","6","pt-BR");
INSERT INTO lime_questions VALUES("24","57346","3","T","6","H&aacute; mais alguma coisa que voc&ecirc; ache importante citar sobre seus interesses ou experi&ecirc;ncias na Internet? Se sim, descreva brevemente.<br />","","","N","N","0","0","6","pt-BR");
INSERT INTO lime_questions VALUES("11","57346","1",":","8","Qual a sua escolaridade?<br />","","","N","N","1","0","7","pt-BR");
INSERT INTO lime_questions VALUES("17","57346","2","S","7","Se voc&ecirc; respondeu &quot;Outros&quot; na pergunta acima, diga quais:","","","N","N","0","0","7","pt-BR");
INSERT INTO lime_questions VALUES("18","57346","2","M","8","Quais sites de relacionamento voc&ecirc; usa?<br />","","","Y","N","0","0","8","pt-BR");



#------------------------------------------
# Table definition for lime_quota
#------------------------------------------
DROP TABLE IF EXISTS lime_quota;

CREATE TABLE lime_quota (
    `id` int(11) NOT NULL auto_increment,
    `sid` int(11),
    `name` varchar(255),
    `qlimit` int(8),
    `action` int(2),
    `active` int(1) DEFAULT '1' NOT NULL,
   PRIMARY KEY (id),
   KEY quota_idx2 (sid)
);


#------------------------------------------
# Table data for lime_quota
#------------------------------------------



#------------------------------------------
# Table definition for lime_quota_members
#------------------------------------------
DROP TABLE IF EXISTS lime_quota_members;

CREATE TABLE lime_quota_members (
    `id` int(11) NOT NULL auto_increment,
    `sid` int(11),
    `qid` int(11),
    `quota_id` int(11),
    `code` varchar(5),
   PRIMARY KEY (id),
   UNIQUE sid (sid, qid, quota_id, code)
);


#------------------------------------------
# Table data for lime_quota_members
#------------------------------------------



#------------------------------------------
# Table definition for lime_saved_control
#------------------------------------------
DROP TABLE IF EXISTS lime_saved_control;

CREATE TABLE lime_saved_control (
    `scid` int(11) NOT NULL auto_increment,
    `sid` int(11) DEFAULT '0' NOT NULL,
    `srid` int(11) DEFAULT '0' NOT NULL,
    `identifier` text DEFAULT '' NOT NULL,
    `access_code` text DEFAULT '' NOT NULL,
    `email` varchar(320),
    `ip` text DEFAULT '' NOT NULL,
    `saved_thisstep` text DEFAULT '' NOT NULL,
    `status` char(1) DEFAULT '' NOT NULL,
    `saved_date` datetime DEFAULT '' NOT NULL,
    `refurl` text,
   PRIMARY KEY (scid),
   KEY saved_control_idx2 (sid)
);


#------------------------------------------
# Table data for lime_saved_control
#------------------------------------------



#------------------------------------------
# Table definition for lime_settings_global
#------------------------------------------
DROP TABLE IF EXISTS lime_settings_global;

CREATE TABLE lime_settings_global (
    `stg_name` varchar(50) DEFAULT '' NOT NULL,
    `stg_value` varchar(255) DEFAULT '' NOT NULL,
   PRIMARY KEY (stg_name)
);


#------------------------------------------
# Table data for lime_settings_global
#------------------------------------------
INSERT INTO lime_settings_global VALUES("DBVersion","132");
INSERT INTO lime_settings_global VALUES("SessionName","ls38352388597396411845");



#------------------------------------------
# Table definition for lime_survey_57346
#------------------------------------------
DROP TABLE IF EXISTS lime_survey_57346;

CREATE TABLE lime_survey_57346 (
    `id` int(11) NOT NULL auto_increment,
    `submitdate` datetime,
    `startlanguage` varchar(20) DEFAULT '' NOT NULL,
    `57346X1X1` varchar(1),
    `57346X1X2` double,
    `57346X1X3` text,
    `57346X1X4` text,
    `57346X1X5` text,
    `57346X1X6` varchar(5),
    `57346X1X9` varchar(5),
    `57346X1X9other` text,
    `57346X1X111_1` text,
    `57346X1X111_2` text,
    `57346X1X112_1` text,
    `57346X1X112_2` text,
    `57346X1X113_1` text,
    `57346X1X113_2` text,
    `57346X1X114_1` text,
    `57346X1X114_2` text,
    `57346X2X8` varchar(5),
    `57346X2X8other` text,
    `57346X2X121` varchar(5),
    `57346X2X122` varchar(5),
    `57346X2X123` varchar(5),
    `57346X2X124` varchar(5),
    `57346X2X125` varchar(5),
    `57346X2X13` text,
    `57346X2X141` varchar(5),
    `57346X2X142` varchar(5),
    `57346X2X143` varchar(5),
    `57346X2X144` varchar(5),
    `57346X2X145` varchar(5),
    `57346X2X15` text,
    `57346X2X161` varchar(5),
    `57346X2X162` varchar(5),
    `57346X2X163` varchar(5),
    `57346X2X164` varchar(5),
    `57346X2X165` varchar(5),
    `57346X2X166` varchar(5),
    `57346X2X167` varchar(5),
    `57346X2X168` varchar(5),
    `57346X2X169` varchar(5),
    `57346X2X1610` varchar(5),
    `57346X2X17` text,
    `57346X2X181` varchar(5),
    `57346X2X182` varchar(5),
    `57346X2X183` varchar(5),
    `57346X2X184` varchar(5),
    `57346X2X185` varchar(5),
    `57346X2X18other` text,
    `57346X3X191` varchar(5),
    `57346X3X192` varchar(5),
    `57346X3X193` varchar(5),
    `57346X3X20` varchar(1),
    `57346X3X21` text,
    `57346X3X22` varchar(1),
    `57346X3X23` text,
    `57346X3X24` text,
   PRIMARY KEY (id)
);


#------------------------------------------
# Table data for lime_survey_57346
#------------------------------------------
INSERT INTO lime_survey_57346 VALUES("145","1980-01-01 00:00:00","pt","F","16","Ipatinga","Minas Gerais","Educação Criativa","1","1","","0","0","0","1","0","0","0","0","-oth-","5","4","2","1","2","","","4","2","4","1","","","4","1","3","3","4","3","4","1","3","","","Y","Y","","","","","5","4","4","Y","Muito bom.","N","","");
INSERT INTO lime_survey_57346 VALUES("144","1980-01-01 00:00:00","pt","F","17","Ipatinga","Minas Gerais","Educação Criativa","1","1","","0","0","0","1","0","0","0","0","-oth-","12","3","2","1","2","","","3","1","1","1","","","3","1","2","1","2","3","3","1","2","","","Y","","","","","","5","3","4","Y","esclarecedor","N","","");
INSERT INTO lime_survey_57346 VALUES("172","1980-01-01 00:00:00","pt","M","19","São Paulo","São Paulo","Morumbi Sul","1","2","","0","0","0","0","0","0","0","1","-oth-","12","4","3","2","1","","","4","1","1","1","","","4","4","4","4","3","4","4","3","4","","","Y","","","","","","5","4","3","Y","Muito bom.","Y","Muito bom.","");
INSERT INTO lime_survey_57346 VALUES("7","1980-01-01 00:00:00","pt","F","14","Imperatriz","Maranhão","CE Dom Bosco","1","1","","1","0","0","0","0","0","0","0","-oth-","11","3","3","3","2","","","3","2","1","1","","","2","2","1","1","2","4","4","3","3","","","Y","Y","","","","","4","3","3","Y","Gosto, cheio de oportunidades para projetos.","Y","Rápido acesso, seguro... perfeito!","Internet é ótimo, meio de comunicação perfeito!");
INSERT INTO lime_survey_57346 VALUES("8","1980-01-01 00:00:00","pt","M","32","São Bernardo do Campo","São Paulo","Instituto Braudel","3","2","","0","0","0","0","0","0","1","0","","","4","3","1","1","","","4","4","4","1","","","4","1","2","2","4","2","2","2","2","","","Y","","","","","","5","5","5","Y","Bom site. Poderia contar mais conteúdo.","Y","Adequado.","POssibilidade de realizar projetos em conjunto à distância.");
INSERT INTO lime_survey_57346 VALUES("9","1980-01-01 00:00:00","pt","M","14","Imperatriz","Maranhão","Complexo Educacional Dom Bosco","1","1","","1","0","0","1","0","0","0","0","-oth-","7","4","2","1","2","","","4","2","1","1","","","3","2","2","2","2","4","1","2","4","","","Y","","","","","Hi 5","5","4","5","Y","Muito importante tanto para quem participa como para quem quer visitar. ","Y","Rápido e prático, além de seguro.","Hoje não há desculpas para quem não fez tarefa de casa, havendo MSN...");
INSERT INTO lime_survey_57346 VALUES("10","1980-01-01 00:00:00","pt","M","19","São Bernardo do Campo","São Paulo","Inst. Fernand Braudel","3","2","","1","0","1","0","1","0","0","1","-oth-","10","4","4","2","2","","","4","2","4","1","","","4","1","4","4","4","4","4","4","3","","","Y","Y","","Y","","","5","3","4","Y","O site é interessante e apresenta informações úteis para quem participa e que deseja participar.","Y","Achei facilitador.","Deveria haver mais vídeos sobre os projetos no site da Febrace.");
INSERT INTO lime_survey_57346 VALUES("11","1980-01-01 00:00:00","pt","F","16","São Bernardo do Campo","São Paulo","Escola Estadual Marco A.P. de Toledo","2","1","","1","0","0","1","0","0","0","0","-oth-","11","4","1","2","2","","","4","2","2","1","","","4","1","4","2","4","4","4","2","2","","","Y","","","","","","4","4","4","Y","Muito interessante com muitas informações úteis.","Y","Bom.","");
INSERT INTO lime_survey_57346 VALUES("12","1980-01-01 00:00:00","pt","M","14","Osasco","São Paulo","E.E. Básica Fundação Bradesco - Jd. Conceição","3","1","","0","0","0","1","0","0","0","0","","","2","2","2","2","","","4","","","4","","","2","2","3","2","2","3","2","2","2","","","Y","Y","","","","","4","3","4","Y","Bom. Com explicações precisas.","N","","");
INSERT INTO lime_survey_57346 VALUES("13","1980-01-01 00:00:00","pt","F","28","Osasco","São Paulo","Fundação Bradesco Jardim Conceição","3","2","","0","0","0","0","0","0","1","0","-oth-","10","4","4","1","2","","","4","2","2","1","","","4","2","2","2","2","2","2","2","2","","","Y","","","","","","5","4","3","Y","Fácil de navegar.","Y","Deixa dúvidas sobre a postagem final.","");
INSERT INTO lime_survey_57346 VALUES("14","1980-01-01 00:00:00","pt","F","14","São Bernardo do Campo","São Paulo","E.E. Nail Franco de Mello Boni","2","1","","0","0","0","1","0","0","0","0","-oth-","11","1","2","3","1","","","3","1","1","","","","3","2","1","1","1","3","2","1","2","","","Y","","","","","","4","4","4","Y","Eu acho que é importante para as pessoas estarem conhecendo e até poder participar. ","Y","Não tivemos problemas dao submeter os projetos.","");
INSERT INTO lime_survey_57346 VALUES("15","1980-01-01 00:00:00","pt","F","21","São Bernardo do Campo","São Paulo","EE Nail Franco de Mello Boni","2","2","","0","0","0","0","0","0","0","1","-oth-","13","4","3","1","3","","","4","2","4","3","","","4","2","2","3","4","3","4","2","3","","","Y","Y","","","","","5","3","5","Y","Muito bom, porém, acho díficil entrar na parte do login.","Y","Bom, não tive problemas para submeter projetos.","");
INSERT INTO lime_survey_57346 VALUES("16","1980-01-01 00:00:00","pt","M","38","Cubatão","São Paulo","EE Professor José da Costa","2","2","","0","0","0","0","0","0","1","0","-oth-","16","4","2","1","2","","","4","1","2","1","1","","4","1","3","3","4","2","1","1","3","","","","","","","Y","","4","4","4","Y","Informativo, boa navegabilidade, poderia ser mais diretos para solução de dúvidas.","Y","Eficiente.","");
INSERT INTO lime_survey_57346 VALUES("17","1980-01-01 00:00:00","pt","M","18","Pouso Alegre ","Minas Gerais","Escola Técnica de Eletrônica \"FMC\"","1","1","","1","0","0","1","0","1","0","0","-oth-","10","4","2","2","1","","","4","2","2","2","","","2","3","2","2","3","4","2","3","2","","","Y","","","","","","4","3","3","Y","Muito bom, pois nos informa tudo que precisamos e dúvidas.","N","","");
INSERT INTO lime_survey_57346 VALUES("18","1980-01-01 00:00:00","pt","M","17","Santa Rita do Sapucaí","Minas Gerais","Escola Técnica de Eletrônica \"FMC\"","1","1","","1","0","0","1","0","1","0","0","-oth-","8","4","2","2","1","","","4","2","2","1","","","4","2","2","2","3","4","3","2","3","","","Y","","","","","","4","3","3","Y","Muito bom, pois informa todas as informações que precisamos.","N","","");
INSERT INTO lime_survey_57346 VALUES("19","1980-01-01 00:00:00","pt","M","16","Rio Bonito","Rio de Janeiro","Escola Técnica de Eletrônica \"FMC\"","1","1","","1","0","0","1","0","1","0","0","-oth-","11","4","2","1","1","","","4","2","2","1","","","4","2","2","2","3","4","4","2","3","","","Y","","","","","","4","2","3","Y","Ótimo, pois ele contém todas as informações necessárias.","Y","Um pouco complicado para algumas pessoas.","");
INSERT INTO lime_survey_57346 VALUES("20","1980-01-01 00:00:00","pt","F","17","Cubatão ","São Paulo","EE Proessor José da Costa","2","1","","0","0","0","1","0","0","0","0","-oth-","9","3","2","2","1","1","","3","1","2","1","1","","3","2","2","2","3","4","4","2","3","1","","Y","","","","","","5","4","4","Y","É um site super informativo que permite ampliar meus conhecimentos.","N","","");
INSERT INTO lime_survey_57346 VALUES("21","1980-01-01 00:00:00","pt","F","17","Cubatão ","São Paulo","EE Professor josé da Costa","2","1","","0","0","0","1","0","0","0","0","-oth-","12","4","1","1","1","1","","4","2","2","1","1","","4","2","1","1","2","4","4","2","2","1","","Y","","","","","","4","4","3","Y","É um site interessante, pois nos mantém informados sobre o projeto que estão envolvidos na feira.","N","","");
INSERT INTO lime_survey_57346 VALUES("22","1980-01-01 00:00:00","pt","F","17","Cubatão","São Paulo","EE Professor José da Costa","2","1","","0","0","0","1","0","0","0","0","-oth-","13","4","1","1","1","","","4","1","1","1","","","3","2","1","1","3","4","3","1","2","","","Y","","","","","","4","4","4","Y","O site é nteressante, pois nele se obtem os projetos finalistas.","N","","");
INSERT INTO lime_survey_57346 VALUES("23","1980-01-01 00:00:00","pt","F","50","Santos ","São Paulo","EE Professor José da Costa","2","2","","0","0","0","0","0","0","1","0","-oth-","40","4","2","1","1","","","4","1","1","1","1","","4","1","4","2","4","1","1","1","2","","","","","","","Y","","4","4","4","Y","Facilitador, prático, interessante.","Y","Facilita muito o trabalaho.","");
INSERT INTO lime_survey_57346 VALUES("24","1980-01-01 00:00:00","pt","M","38","Cubatão","Sâo Paulo","EE Professor José da Escola","2","2","","0","0","0","0","0","0","1","0","-oth-","16","4","2","1","2","1","","4","1","2","1","1","","","1","3","3","4","2","1","1","3","1","","","","","","Y","","4","4","4","Y","Informações, boa nnvegabilidade, poderia ser mais diretos para a solução de dúvidas. ","Y","Eficiente.","");
INSERT INTO lime_survey_57346 VALUES("25","1980-01-01 00:00:00","pt","F","14","Imperatriz","Maranhão","Complexo Educacional Dom Bosco","1","1","","1","0","0","1","0","0","0","0","-oth-","11","4","2","1","2","","","4","2","2","1","","","2","3","1","3","4","4","","1","4","","","Y","","","","","Sonico","4","3","3","","Acho que deveria dar um espaço maior aos projetos aceitos... uma página, portal, quem sabe...","Y","Gosto, É prático e seguro.\n","Internet é algo muito bom, mas deve-se ter cuidado...já roubaram várias contas minhas por exemplo.");
INSERT INTO lime_survey_57346 VALUES("26","1980-01-01 00:00:00","pt","M","48","Teresina ","Piauí","Educação Básica Professor E. Resende ","3","2","","0","0","0","0","0","0","1","0","-oth-","20","4","4","1","1","1","","4","3","1","1","1","","4","2","2","3","4","1","2","2","2","1","","","","","","","","5","5","5","Y","É bastante informativo e esclarecedor.","Y","É prático e rápido.","Que seja criado um momento de socialização dos trabalhos apresentados entre alunos.");
INSERT INTO lime_survey_57346 VALUES("27","1980-01-01 00:00:00","pt","M","19","Leopoldina","Minas Gerais","CEFET ","2","1","","0","0","0","0","0","1","0","0","-oth-","12","3","4","1","1","","","4","1","1","1","","","4","1","1","3","3","3","1","1","2","","","Y","","","","","","4","4","4","Y","Bem estruturado.","Y","Bem estruturado.","");
INSERT INTO lime_survey_57346 VALUES("28","1980-01-01 00:00:00","pt","M","","Juiz de Fora","Minas Gerais","CEFET","2","2","","0","0","0","0","0","0","1","0","-oth-","19","4","4","1","1","1","","4","4","2","1","1","","4","2","3","3","4","3","2","2","2","","","Y","","","","","","4","4","4","Y","Contém as principais informações sobre o evento.","Y","Agiliza o processo de seleção dos trabalhos.","");
INSERT INTO lime_survey_57346 VALUES("29","1980-01-01 00:00:00","pt","F","","Imperatriz","Maranhão","Complexo Educacional Dom Bosco ","1","1","","0","0","0","1","0","0","0","0","","","2","2","2","2","","","2","2","2","1","","","2","1","1","1","2","2","2","2","2","","","Y","","","","","","5","5","4","Y","traz muito conhecimento.","N","","");
INSERT INTO lime_survey_57346 VALUES("30","1980-01-01 00:00:00","pt","F","","Imperatriz ","Maranhão","Complexo Educacional Dom Bosco","1","1","","0","0","0","1","0","0","0","0","-oth-","10","4","2","2","2","","","4","2","2","2","","","4","2","1","1","2","2","2","2","2","","","Y","","","","","","5","4","4","Y","De aprendermos um pouco mais do mundo de hoje.","N","","");
INSERT INTO lime_survey_57346 VALUES("31","1980-01-01 00:00:00","pt","M","17","Osasco","São Paulo","EEFMEPJA Embaixador Assis Chateaubriand","3","1","","0","0","0","1","0","0","0","0","","","4","2","1","1","1","","4","4","2","1","1","","4","2","2","2","3","4","4","1","2","1","","Y","","","","","","5","3","4","Y","É um site bom, que expõe os projetos finalistas de forma breve, incentiva os alunos a criarem projetos científicos, mas deveria dar espaço para os alunos se relacionarem e conhecerem outros alunos.","Y","Não tivemos nenhum problema ao submeter nosso projeto, entretanto opinamos em nos certificar enviando o projeto pessoalmente também.","");
INSERT INTO lime_survey_57346 VALUES("32","1980-01-01 00:00:00","pt","F","16","Osasco","São Paulo","EEFMEPJA Embaixador Assis Chateaubriand","3","1","","0","0","0","1","0","0","0","0","-oth-","4","4","2","1","1","","","4","4","1","1","","","4","1","2","2","2","4","4","1","2","","","Y","","","","","Sonico","4","3","4","Y","É um site bom que nos informa como organizar um projeto para a Febrace.","Y","É um meio mais eficiente de submeter o projeto e é mais seguro.","");
INSERT INTO lime_survey_57346 VALUES("33","1980-01-01 00:00:00","pt","F","17","Cubatão","São Paulo","EE José da Costa","2","1","","0","0","0","1","0","1","0","0","-oth-","11","2","1","2","1","","","2","2","1","1","","","3","2","1","1","2","2","3","2","2","","","Y","","","","","","5","4","5","Y","Prático, eficiente e nos transmite informações rapidamente.","Y","Eficiente.","");
INSERT INTO lime_survey_57346 VALUES("34","1980-01-01 00:00:00","pt","F","17","Cubatão","São Paulo","EE Professor José da Costa","2","1","","0","0","0","1","0","1","0","0","-oth-","12","4","1","2","2","","","4","1","2","1","","","4","1","2","1","4","4","3","2","2","","","Y","Y","","","","","4","5","5","Y","Muito ótimo, pois o site faz com que o visitante se interesse pelo objetivo da feira e fizemos a nossa própria inscrição pelo site.","Y","Ótimo e eficiente.","");
INSERT INTO lime_survey_57346 VALUES("35","1980-01-01 00:00:00","pt","F","50","Santos","São Paulo","EE Professor José da Costa","2","2","","0","0","0","0","0","0","1","0","-oth-","40","4","3","1","","","","4","1","1","1","","","4","1","4","2","4","1","1","1","2","","","","","","","Y","","5","4","4","Y","Interessante e muito estimulante.","Y","Facilitador, prático e eficiente.","");
INSERT INTO lime_survey_57346 VALUES("36","1980-01-01 00:00:00","pt","F","16","Americana","São Paulo","ETEC Polivalente de Americana","2","1","","1","0","0","1","0","1","0","0","-oth-","9","1","3","1","1","1","","3","1","1","1","1","","3","2","2","1","2","3","3","1","2","1","","Y","","","","","Tagged","5","3","2","Y","Falta de informações sobre o que é, como funciona e auxílio aos finalistas.","N","","");
INSERT INTO lime_survey_57346 VALUES("37","1980-01-01 00:00:00","pt","M","17","Americana","São Paulo","ETEC Polivalente de Americana","2","1","","1","0","0","1","0","1","0","0","-oth-","9","4","4","2","1","","","4","2","1","1","","","4","3","3","2","2","4","4","2","2","","","Y","","","","","","4","1","1","Y","O site é bom mas o mapa do site não funciona direito.","Y","Interessante e bem estruturado.","");
INSERT INTO lime_survey_57346 VALUES("38","1980-01-01 00:00:00","pt","M","","Formoso do Araguaio","Tocantins","Fundação Bradesco - Escola de Canuanã","3","1","","1","0","0","1","0","1","0","0","-oth-","10","3","3","2","3","","","3","3","2","1","","","3","3","2","3","3","3","3","3","3","","","Y","","Y","","","","5","5","5","Y","Bastante informativo.","N","","");
INSERT INTO lime_survey_57346 VALUES("39","1980-01-01 00:00:00","pt","F","45","São Paulo","São Paulo","Colégio Dante Alighieri","1","2","","0","0","0","0","0","0","1","0","-oth-","18","4","4","","","","","4","2","","","","","4","","2","4","4","","2","","","","","Y","","","","","","5","5","4","Y","Informações de fácil acesso.","Y","O sistema é eficiente.","");
INSERT INTO lime_survey_57346 VALUES("40","1980-01-01 00:00:00","pt","F","15","São Paulo","São Paulo","Colégio Dante Alighieri","1","1","","0","0","0","1","0","0","0","0","-oth-","5","4","2","1","1","","","3","3","1","2","","","4","3","2","2","2","3","2","1","3","","","Y","","","","","Gaia Online","3","2","4","Y","Bom, mas um pouco confuso. Daria para melhorar.","Y","Muito bom, não tive problemas.","");
INSERT INTO lime_survey_57346 VALUES("41","1980-01-01 00:00:00","pt","F","15","São Paulo","São Paulo","Colégio Dante Alighieri","1","1","","0","0","0","1","0","0","0","0","-oth-","2","4","3","1","1","","","4","3","1","1","1","","2","1","1","3","4","1","1","1","2","","","","","","","Y","","5","4","3","Y","Um site bom, no entanto confuso.","N","","Embora seja um bom modo de se comunicar e obter informações, há muitas formas de se enganar e obter informações erradas sobre pessoas e outros assuntos.");
INSERT INTO lime_survey_57346 VALUES("42","1980-01-01 00:00:00","pt","M","","São Paulo","São Paulo","Dante Alighieri","1","1","","1","0","0","1","0","0","0","0","","","3","2","","1","","","2","3","1","1","1","","2","2","2","3","2","3","1","1","2","1","","Y","","","","","Skype","4","3","2","Y","Acho bem organizado, mas tem muita coisa, acaba ficando confuso.","N","","");
INSERT INTO lime_survey_57346 VALUES("43","1980-01-01 00:00:00","pt","M","","São Paulo","São Paulo","Dante Alighieri","1","1","","0","0","0","1","0","0","0","0","-oth-","7","3","2","1","1","","","4","2","1","2","","","3","3","2","3","2","3","2","1","3","","","Y","","","","","","4","3","2","Y","","Y","Bom, eu usei muito pouco, só para me cadastrar, mas pelo que vi é muito bem formulado.","");
INSERT INTO lime_survey_57346 VALUES("44","1980-01-01 00:00:00","pt","M","","São Paulo","São Paulo","Dante Alighieri","1","1","","0","0","0","1","0","0","0","0","-oth-","7","3","2","1","1","","","2","4","1","1","","","3","2","2","3","3","3","2","1","2","","","Y","","","","","","4","3","2","Y","Usei pouco, apenas para cadastrar o projeto.","N","","");
INSERT INTO lime_survey_57346 VALUES("45","1980-01-01 00:00:00","pt","F","15","Teresina","Piaui","Fundação Bradesco","3","1","","0","0","0","1","0","0","0","0","-oth-","10","3","2","1","1","","","3","2","2","1","","","4","1","1","2","2","3","1","2","2","","","Y","","","","","","5","4","4","Y","É um site muito bom, em que aprendemos várias coisas.","Y","Importante e prático.","");
INSERT INTO lime_survey_57346 VALUES("46","1980-01-01 00:00:00","pt","M","25","Belem","Pará","Escola Técnica Magalhães Barata","2","2","","0","0","0","0","0","0","0","1","-oth-","17","3","1","1","1","","","3","1","1","1","","","3","1","1","3","2","2","1","1","1","","","Y","","","","","","5","5","5","Y","Das poucas vezes que entrei, gostei muito.","N","","");
INSERT INTO lime_survey_57346 VALUES("47","1980-01-01 00:00:00","pt","M","18","Ananaindeva","Pará","Escola Técnica Magalhães Barata","2","1","","0","0","0","0","0","1","0","0","-oth-","13","4","2","2","2","","","4","2","2","2","","","4","2","1","2","3","2","3","1","3","","","Y","","","","","","4","3","3","Y","`´E um site importante para o desenvolvimento de novas tecnologias.","Y","Deveria ter uma capacidade de UPloads maior, para que possamos enviar documento de maior tamanho. ","");
INSERT INTO lime_survey_57346 VALUES("48","1980-01-01 00:00:00","pt","M","22","Belém ","Pará","Escola de Ensino Tecnológico do Pará","2","3","","0","0","0","0","0","1","0","0","-oth-","12","1","1","4","1","1","","4","2","1","1","1","","4","2","4","1","2","4","2","2","2","1","","Y","","Y","","","","4","3","3","Y","O site da Febrace é um site muito informativo e de grande ajuda.","N","","");
INSERT INTO lime_survey_57346 VALUES("49","1980-01-01 00:00:00","pt","F","19","Barcarena","Pará","Escola Técnica Magalhães Barata ","2","1","","0","0","0","0","0","1","0","0","-oth-","14","1","2","3","2","","","3","2","1","1","","","3","2","1","1","2","1","3","2","2","","","Y","","","","","","5","4","5","Y","Tem bastante informação para quem e para nós que queremos desenvolver um projeto.","N","","");
INSERT INTO lime_survey_57346 VALUES("50","1980-01-01 00:00:00","pt","M","20","","Pará","Escola Técnica Magalhães Barata","2","1","","0","0","0","0","0","1","0","0","-oth-","14","1","2","2","3","","","2","2","4","2","","","2","2","2","2","2","2","2","2","2","","","Y","","","","","","5","4","5","Y","O site da Febrace oferece bastante informação para os que querem desenvolver projetos e apresentar, a qual é muito importante.","Y","O sistema de submissão de fato foi significativo para participarmos da feira.","");
INSERT INTO lime_survey_57346 VALUES("51","1980-01-01 00:00:00","pt","M","27","Belém ","Pará","Escola Estadual de Ensino Tecnológico do Pará","2","2","","0","0","0","0","1","0","0","0","-oth-","17","1","2","4","2","","","4","2","4","2","","","4","2","2","3","4","4","2","4","4","","","Y","Y","","","","","5","4","5","Y","É um site muito criativo e informativo sobre ciências.","Y","Muito bom.","");
INSERT INTO lime_survey_57346 VALUES("52","1980-01-01 00:00:00","pt","F","17","Taboão da Serra","São Paulo","ETEC Guaracy Silveira","2","1","","0","0","0","1","0","1","0","0","-oth-","11","4","1","1","1","","","4","2","1","1","","","4","4","4","2","3","4","4","1","3","","","Y","Y","","","","","3","4","5","Y","É muito importante porque contém informações valiosas.","N","","");
INSERT INTO lime_survey_57346 VALUES("53","1980-01-01 00:00:00","pt","F","19","Cotia","São Paulo","ETEC Guaracy Silveira","2","1","","0","0","0","0","0","1","0","0","-oth-","11","4","1","1","2","","","4","1","1","1","","","4","1","1","1","2","4","4","1","3","","","Y","","","","","","3","4","1","Y","Interessante, pois nos deixa atento sobre datas e eventos.","N","","");
INSERT INTO lime_survey_57346 VALUES("54","1980-01-01 00:00:00","pt","F","17","São Paulo","São Paulo","ETEC Guaracy Silveira","2","1","","1","0","1","0","0","1","0","1","-oth-","11","4","1","2","1","","","4","2","1","1","","","4","2","1","1","1","4","4","1","4","","","Y","","","","","","3","4","2","Y","O site é interessante e bastante informativo, nos deixando a par de tudo o que precisamos saber.","N","","");
INSERT INTO lime_survey_57346 VALUES("55","1980-01-01 00:00:00","pt","M","16","Americana","São Paulo","ETEC Polivalente","2","1","","1","0","0","1","0","0","0","0","-oth-","10","4","2","1","1","","","4","1","1","1","","","4","1","2","2","3","2","4","1","4","","","Y","Y","","","","","5","3","4","Y","O site é bem elaborado e objetivo.","N","","");
INSERT INTO lime_survey_57346 VALUES("56","1980-01-01 00:00:00","pt","F","17","Campinas","São Paulo","EEBP Fundação Bradesco","3","1","","0","0","0","1","0","0","0","0","-oth-","7","4","2","1","1","","","4","2","1","1","","","4","1","1","2","3","3","4","1","2","","","Y","","","","","","5","4","4","Y","Acho ele muito interativo, traz conhecimento e é bem interessante, afinal você pode ver projetos dos anos anteriores, ajuda na formação dos nossos projetos e na submissão.","Y","Acredito que ele facilita e agiliza.","");
INSERT INTO lime_survey_57346 VALUES("57","1980-01-01 00:00:00","pt","F","37","Campinas","São Paulo","Fundação Bradesco","3","2","","0","0","0","0","0","0","1","0","-oth-","15","3","4","2","2","","","4","3","4","2","","","4","1","2","2","4","2","1","1","2","","","","","","","Y","","5","4","3","Y","Uma grande oportunidade de troca de experiências em nossa área de atuação e aprendizado a Professores e alunos de outras áreas.","Y","Agiliza as etapas de submissão e informação.","");
INSERT INTO lime_survey_57346 VALUES("58","1980-01-01 00:00:00","pt","M","17","São Paulo","São Paulo","Centro Educacional Pedreira","3","1","","1","0","0","1","0","1","0","0","-oth-","12","4","2","1","1","","","4","1","4","2","","","4","1","2","2","2","4","4","1","2","","","Y","","","","","","5","4","5","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("59","1980-01-01 00:00:00","pt","M","17","Centro Educacional de Pedreira","São Paulo"," São Paulo","3","1","","1","0","1","0","0","1","0","0","-oth-","13","4","2","1","2","","","4","2","1","1","","","4","2","1","2","2","4","4","2","3","","","Y","","","","","","5","4","5","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("60","1980-01-01 00:00:00","pt","M","19","São Paulo","São Paulo"," Centro Educacional da Pedreira","3","1","","1","0","1","0","0","1","0","0","","","2","4","2","1","","","4","1","1","1","","","4","1","1","1","1","3","3","1","2","","","Y","","","","","","4","4","3","N","","","","");
INSERT INTO lime_survey_57346 VALUES("61","1980-01-01 00:00:00","pt","M","17","Marília","São Paulo","Fundação Bradesco","3","1","","0","0","0","1","0","0","0","0","-oth-","7","3","4","3","3","","","4","2","1","1","","","3","1","1","2","3","3","2","2","2","","","","","","","","MSN","4","4","4","Y","Traz muitas informações e relaciona de forma clara e objetiva a feira.","Y","Boa afinal facilita a inscrição de projetos.","");
INSERT INTO lime_survey_57346 VALUES("62","1980-01-01 00:00:00","pt","M","34","Marília","São Paulo","Fundação Bradesco","3","2","","0","0","0","0","0","0","1","0","-oth-","17","4","4","1","2","","","4","4","","","","","4","1","1","2","4","2","1","1","2","","","","","","","Y","","4","4","4","Y","Interessante e ilustrativo.","N","","");
INSERT INTO lime_survey_57346 VALUES("63","1980-01-01 00:00:00","pt","F","16","Americana","São Paulo","ETEC Polivalente de Americana","2","1","","0","0","0","1","0","0","0","0","-oth-","11","3","2","1","1","","","3","1","1","1","","","3","2","2","1","2","2","3","1","1","","","Y","","","","","","4","3","3","Y","Acho organizado e com informações importantes.","Y","Interessante esta facilidade, mas creio que é confuso quando você não entende o que é preciso mudar para a bolinha ficar verde.","");
INSERT INTO lime_survey_57346 VALUES("64","1980-01-01 00:00:00","pt","M","16","Americana","São Paulo","ETEC Polivalente de Americana","2","1","","0","0","0","1","0","1","0","0","-oth-","10","4","4","1","1","","","4","1","1","2","","","4","3","2","2","4","4","1","1","4","","","","","","","Y","","4","1","4","Y","Bem estruturado e de fácil visualização.","Y","Não Muito prático.","");
INSERT INTO lime_survey_57346 VALUES("65","1980-01-01 00:00:00","pt","F","16","Americana","São Paulo","ETEC Polivalente de Americana","2","1","","0","0","0","1","0","0","0","0","-oth-","12","3","2","1","1","","","3","3","1","1","","","3","2","1","1","2","3","2","1","3","","","Y","Y","","","","","4","3","3","Y","Acredito que é um site interativo, quem contém informações interessantes.","Y","Interessante, mas precisa especificar melhor.","");
INSERT INTO lime_survey_57346 VALUES("66","1980-01-01 00:00:00","pt","M","34","Timóteo","Minas Gerais","CEFET MG","2","2","","0","0","0","0","0","0","1","0","-oth-","17","4","4","1","2","","","4","4","4","1","","","4","1","4","4","4","2","3","1","4","","","Y","","","","","","5","5","5","Y","Ás vezes tenho dificuldade de localizar informações como a programação do evento com os trabalhos e seus respectivos estandes.","N","","");
INSERT INTO lime_survey_57346 VALUES("67","1980-01-01 00:00:00","pt","M","17","Timóteo","Minas Gerais","CEFET MG","2","1","","0","0","0","0","1","0","0","0","-oth-","11","3","2","1","2","","","4","1","1","1","","","4","1","1","1","3","1","1","1","1","","","","","","","Y","","4","3","3","Y","Bom.","N","","");
INSERT INTO lime_survey_57346 VALUES("68","1980-01-01 00:00:00","pt","F","35","Conceição do Araguaia","Pará","Fundação Bradesco","3","2","","0","0","0","0","0","0","1","0","-oth-","20","3","2","1","1","","","3","4","4","1","","","3","1","1","1","2","","1","1","1","","","","","","","Y","","4","5","4","Y","É um site que fornece informações importantes e esclarecedor sobre os projetos de pesquisa de várias instituições.","Y","Muito bom.","");
INSERT INTO lime_survey_57346 VALUES("69","1980-01-01 00:00:00","pt","F","15","Conceição do Araguaia","Pará","Fundação Bradesco","3","1","","0","0","0","1","0","0","0","0","-oth-","10","1","3","2","2","","","3","2","1","1","","","3","2","1","","3","1","1","1","2","","","","","","","Y","","5","4","5","Y","É um site muito bom, é bem esclarecedor.","Y","É ótimo, principalmente no que diz respeito as localidades que são longe e da dificuldade dos finalistas de mudarem seus projetos.","");
INSERT INTO lime_survey_57346 VALUES("70","1980-01-01 00:00:00","pt","F","16","Cataguases","Minas Gerais","Escola Técnica de Formação Gerencial","1","1","","0","0","0","1","0","1","0","0","-oth-","11","4","2","2","1","","","4","1","1","1","","","4","1","1","2","3","4","4","1","2","","","Y","Y","","","","","5","4","5","Y","É um site bem organizado, de fácil acesso e o que mais me impressiona foi porque sempre quando procisei tirar dúvidas me respondiam rapidamente.","Y","É uma forma de utilizar a internet como uma \"carta rápida\". Uma ótima idéia.","");
INSERT INTO lime_survey_57346 VALUES("71","1980-01-01 00:00:00","pt","F","16","Cataguases","Minas Gerais","Escola Técnica de Formação Gerencial","1","1","","0","0","0","1","0","1","0","0","-oth-","13","4","2","1","1","","","4","2","1","1","","","4","1","1","2","3","4","4","1","2","","","Y","","","","","","5","4","5","Y","É um site muito bem organizado e as idéias do mesmo são expostas da melhor forma.","Y","Facilidade no acesso.","");
INSERT INTO lime_survey_57346 VALUES("72","1980-01-01 00:00:00","pt","F","17","Cataguases ","Minas Gerais","Escola Técnica de Formação Gerencial","1","1","","0","0","0","1","0","1","0","0","-oth-","9","4","2","1","1","4","Estágio","4","4","1","1","","","4","1","1","2","3","4","4","1","2","","","Y","Y","","","","","5","4","5","Y","É um site muito organizado, de fácil acesso e quando precisamos de tirar dúvidas, somos respondidos rapidamente.","Y","É de fácil acesso.","");
INSERT INTO lime_survey_57346 VALUES("73","1980-01-01 00:00:00","pt","F","42","","","","","3","","0","0","0","0","0","0","1","0","-oth-","37","3","4","2","1","4","Na escola em que trabalho","4","1","1","1","","","4","2","2","2","4","3","2","1","2","","","","","","","","MSN","4","5","4","Y","Achei importante pois respondia as dúvidas da equipe e além de estimulá-los a prosseguir (vídeos de premiação, etc).","N","","É interessante uma feira virtual, mas sem anular o crédito de uma feira real, onde o relacionamento humano mais intenso se faz necessário.");
INSERT INTO lime_survey_57346 VALUES("74","1980-01-01 00:00:00","pt","F","17","Campinas","São Paulo","Fundação Bradesco","3","1","","1","0","0","1","0","0","0","0","-oth-","8","4","2","1","2","","","4","2","2","1","1","","4","2","2","2","4","4","4","1","3","","","Y","","Y","","","","5","4","4","Y","Bem interessante, direto e de fácil acesso aos conteúdos/ buscas necessárias.","","","O contato da feira real é fundamental.");
INSERT INTO lime_survey_57346 VALUES("75","1980-01-01 00:00:00","pt","M","17","Campinas","São Paulo","Fundação Bradesco","3","1","","0","0","0","1","0","0","0","0","-oth-","6","4","2","1","1","","","4","3","1","1","","","4","2","3","2","4","3","4","1","3","","","Y","","","","","","4","4","4","Y","Um site muito interessante pois pode nos ajudar com relação aos outros projetos.","N","","");
INSERT INTO lime_survey_57346 VALUES("76","1980-01-01 00:00:00","pt","F","58","Americana","São Paulo","ETEC Polivalente de Americana","2","2","","0","0","0","0","0","0","1","0","-oth-","40","4","3","","","","","4","","","","","","4","","","","4","","","","","","","Y","","","","","","5","5","5","Y","Atendes ao Objetivos propostos. Bom.","Y","Interessante, ágil.","");
INSERT INTO lime_survey_57346 VALUES("77","1980-01-01 00:00:00","pt","M","44","Americana ","São Paulo ","ETEC Polivalente","","2","","0","0","0","0","0","0","1","0","-oth-","18","3","3","","","","","3","","","","","","3","","","3","3","","","","3","","","","","","","Y","","3","2","4","Y","Informativo, explicativo e elucidativo principalmente para questões metodológicas.","Y","Há alguns detalhes de submissão do relatório a serem melhoradas.","");
INSERT INTO lime_survey_57346 VALUES("78","1980-01-01 00:00:00","pt","F","17","Americana","São Paulo","ETEC Polivalente","2","1","","1","0","1","0","1","0","0","1","-oth-","10","4","4","1","1","1","","4","4","1","1","1","","4","3","4","4","4","4","1","1","4","1","","","","","","Y","","4","4","4","Y","Interessante!","Y","Muito organizado e bem elaborado.","");
INSERT INTO lime_survey_57346 VALUES("79","1980-01-01 00:00:00","pt","M","17","Americana"," São Paulo","ETEC Polivalente","2","1","","1","0","1","0","1","0","0","0","-oth-","8","4","3","1","1","","","4","1","1","1","","","4","1","3","3","4","4","4","1","2","","","Y","","","Y","","","4","3","2","Y","Informativo e bem organizado.","Y","Interessante. Muito bem organizado, proporciona uma maneira legal de intereção, mesmo para quem não tem muito contato com computadores.","");
INSERT INTO lime_survey_57346 VALUES("80","1980-01-01 00:00:00","pt","M","17","São Paulo","São Paulo","Centro Educacional de Pedreira","3","1","","1","0","1","0","0","1","0","0","-oth-","10","3","1","3","1","","","3","1","1","1","","","3","3","3","3","3","3","3","3","3","","","Y","","","","","","4","2","4","Y","Um site muito eficaz e de fácil manuzeio.","Y","Facilita a vida do estudante.","");
INSERT INTO lime_survey_57346 VALUES("81","1980-01-01 00:00:00","pt","M","19","São Paulo","São Paulo","Centro Educacional de Pedreira","3","","","1","0","1","0","0","1","0","0","","","4","1","3","1","","","3","1","1","1","","","4","3","3","3","2","2","4","2","3","","","Y","","","","","","2","4","4","Y","Um site completo e de fácil entendimento.","N","","");
INSERT INTO lime_survey_57346 VALUES("82","1980-01-01 00:00:00","pt","M","","São Paulo","São Paulo","Centro Educacional de Pedreira","3","1","","1","0","0","1","0","1","0","0","-oth-","14","4","2","2","2","","","4","1","2","1","","","3","3","2","2","3","4","4","2","3","","","Y","Y","","","","","4","3","4","Y","Site completo com várias guias e opções com bastente informação.","N","","");
INSERT INTO lime_survey_57346 VALUES("83","1980-01-01 00:00:00","pt","F","16","Rio Clarp","São Paulo","Colégio Koelle","1","1","","0","0","0","1","0","0","0","0","-oth-","8","4","3","1","1","1","","4","2","1","1","1","","4","2","2","2","4","4","2","1","2","","","Y","","","","","","4","5","4","Y","N aminha opinião é um excelente site, sempre está atualizado e com ele conseguimos informações muito importantes sobre a feira.","Y","Eu acho uma maneira muito prática de submeter os dados, assim ganhamos muito mais tempo.","");
INSERT INTO lime_survey_57346 VALUES("84","1980-01-01 00:00:00","pt","M","31","Timóteo","Minas Gerais","CEFET MG","2","2","","0","0","0","0","0","0","1","0","-oth-","18","2","3","1","1","","","4","3","1","1","","","4","1","1","2","2","2","2","1","2","","","","","","","Y","","4","4","4","Y","Muito Bom.","Y","Muito bom.","");
INSERT INTO lime_survey_57346 VALUES("85","1980-01-01 00:00:00","pt","F","18","Timóteo ","Minas Gerais","CEFET MG","2","1","","0","0","0","0","1","0","0","0","-oth-","10","4","4","1","1","","","4","1","2","1","","","4","2","2","2","3","4","4","1","3","","","Y","","","","","","5","3","4","Y","Muito bom.","N","","");
INSERT INTO lime_survey_57346 VALUES("86","1980-01-01 00:00:00","pt","F","17","Ipotinga","Minas Gerais","Escola Educação Criativa","1","1","","1","0","0","1","0","0","0","0","-oth-","10","4","2","2","2","","","4","2","1","1","","","4","2","1","3","3","4","4","1","3","","","Y","","","Y","","","5","5","5","Y","Muito bom, bem explicativo.","N","","");
INSERT INTO lime_survey_57346 VALUES("87","1980-01-01 00:00:00","pt","F","16","Augustinópolis","Tocantins","Complexo Educacional Dom Bosco","1","1","","1","0","0","1","0","0","0","0","-oth-","8","4","4","2","2","","","4","4","1","3","","","4","2","3","2","4","2","1","2","3","","","Y","","","","","","5","5","5","Y","Bastante completo, explica o suficiente sobre a feira.","N","","");
INSERT INTO lime_survey_57346 VALUES("88","1980-01-01 00:00:00","pt","M","17","Imperatriz","Maranhão","Complexo Educacional Dom Bosco","1","1","","1","0","0","1","0","0","0","0","","","4","3","2","2","","","4","2","2","1","","","4","4","3","3","4","2","2","","","","","Y","","","","","","5","5","5","Y","Muito bom.","N","","");
INSERT INTO lime_survey_57346 VALUES("89","1980-01-01 00:00:00","pt","F","47","Imperatriz","Maranhão","Complexo Educacional Dom Bosco","1","2","","0","0","0","0","0","0","1","0","-oth-","28","3","4","","2","","","3","4","2","1","","","4","1","2","","3","2","1","1","2","","","","","","","Y","","5","4","5","Y","Um site interessante, desafiador com informações importantes com linguagem clara para os jovens.","Y","Como já relatei no item 12 as informações contidas estão claras. A crítica é somente na questão de atualização do sumário do mesmo.","");
INSERT INTO lime_survey_57346 VALUES("90","1980-01-01 00:00:00","pt","M","16","Imperatriz","Maranhão ","Complexo Educacional Dom Bosco","1","1","","0","0","0","1","0","0","0","0","-oth-","7","4","4","2","3","","","4","3","1","1","","","4","2","2","2","4","1","1","4","3","","","Y","","","","","","5","5","5","Y","Muito interessante, mais muito difícil de encontrar atualização do menu (a esquerda) é uma boa idéia.","Y","Muito bom, auto-explicativo.","");
INSERT INTO lime_survey_57346 VALUES("91","1980-01-01 00:00:00","pt","M","18","Itajubá","Minas Gerais","Fundação Bradesco","3","1","","0","0","1","0","0","0","0","0","-oth-","14","3","2","2","1","","","4","1","2","2","","","4","2","4","2","4","4","2","2","3","","","Y","","","","","","4","3","4","Y","Esclarecedor, bem elaborado e sempre atualizado.","Y","É interessante, pois temos várias opções para mandar os projetos.","");
INSERT INTO lime_survey_57346 VALUES("92","1980-01-01 00:00:00","pt","F","27","Itajubá","Minas Gerais","Fundação Bradesco","3","2","","0","0","0","0","0","0","1","0","-oth-","17","4","3","1","1","","","4","4","1","1","","","4","2","1","1","4","4","3","1","2","","","","","","","Y","","4","4","4","Y","Ótimo, divulga projetos.","Y","Facilidade, economia de tempo.","");
INSERT INTO lime_survey_57346 VALUES("93","1980-01-01 00:00:00","pt","M","45","Parnamirim","Rio Grande do Norte","EE Dom Nivaldo Monte","2","2","","0","0","0","0","0","0","1","0","-oth-","1988","4","3","","3","","","4","4","1","1","1","","4","2","2","3","4","2","2","2","2","","","","","","","","MSN","4","2","2","Y","O site é muito bom, fácil de navegar e bastante objetivo.","Y","É interessante, objetivo e facilita a vida dos participantes.","");
INSERT INTO lime_survey_57346 VALUES("94","1980-01-01 00:00:00","pt","F","","Parnamirim","Rio Grande do Norte","EE Dom Nivaldo Monte","2","2","","0","0","0","0","0","0","1","0","-oth-","1989","3","3","1","3","","","3","3","3","1","1","","3","","3","3","3","2","2","2","1","1","","","","","","Y","","4","2","2","Y","É interessante, com ele é possível obter informações sobre a feira.","Y","Facilita o acesso daqueles que querem se inscrever na feira.","");
INSERT INTO lime_survey_57346 VALUES("95","1980-01-01 00:00:00","pt","M","16","Parnamirim","Rio Grande so Norte","EE Dom Nivaldo Monte","2","1","","0","0","0","1","0","0","0","0","-oth-","13","1","2","3","2","","","3","2","1","1","","","3","2","2","2","3","3","3","2","2","","","Y","Y","","","","","5","4","3","Y","Interessante, com ele é possível obter informações precisas sobre a feira e os projetos finalistas.","Y","Bastante fácil e acessível para aqueles que querem se inscrever para a feira.","");
INSERT INTO lime_survey_57346 VALUES("96","1980-01-01 00:00:00","pt","F","16","Piracicaba","São Paulo","Liceu Terras do Engenho","1","1","","0","0","0","1","0","0","0","0","","","4","2","1","1","","","4","1","1","1","","","1","1","2","1","1","","4","1","3","","","Y","","","","","","5","5","4","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("97","1980-01-01 00:00:00","pt","F","16","Piracicaba","São Paulo","Liceu Terras de Engenho","1","1","","0","0","0","1","0","0","0","0","-oth-","10","4","2","1","1","","","4","2","1","1","","","4","2","2","2","4","4","4","1","4","","","Y","Y","Y","","","","5","5","5","Y","Um site organizado que tem fim de mostrar ao mundo sobre a feira.","Y","Muito bom.","");
INSERT INTO lime_survey_57346 VALUES("98","1980-01-01 00:00:00","pt","F","15","Piracicaba","São Paulo","Liceu Terras de Engenho","1","1","","0","0","0","1","0","0","0","0","-oth-","8","4","1","2","1","","","4","2","1","1","","","4","2","2","1","2","4","4","2","4","","","Y","Y","","","","","5","5","5","Y","Site muito bem organizado. ","Y","Muito interessante, facilita o envio dos projetos.","");
INSERT INTO lime_survey_57346 VALUES("99","1980-01-01 00:00:00","pt","M","39","Miranda","Mato Grosso do Sul","Fundação Bradesco","3","2","","0","0","0","0","0","0","1","0","-oth-","20","3","4","2","1","","","4","3","1","1","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO lime_survey_57346 VALUES("100","1980-01-01 00:00:00","pt","F","15","Miranda","Mato Grosso do Sul","Fundação Bradesco","3","1","","0","0","0","1","0","1","0","0","-oth-","12","","3","","","","","3","","","","","","3","","","","","","","","","","","","","","","","e-mail","4","4","4","Y","Um site que nos informa sobre novas tecnologias, em vários setores, desde pecuária até robótica.","Y","Site que nos informa sobre projeto e nos ajuda mutio, gosto e acho interessante.","");
INSERT INTO lime_survey_57346 VALUES("101","1980-01-01 00:00:00","pt","F","15","Miranda","Mato Grosso do Sul","Fundação Bradesco","3","1","","0","0","0","1","0","1","0","0","-oth-","11","","3","","","","","3","","","","","","3","","","","","","","","","","","Y","","","","","","4","4","4","Y","Um site que nos deixa a par da realidade em questão de tecnologia e avanços culturais.","N","","");
INSERT INTO lime_survey_57346 VALUES("102","1980-01-01 00:00:00","pt","F","18","Miranda","Mato Grosso do Sul","Fundação Bradesco","3","1","","0","0","1","0","1","0","0","0","-oth-","12","","1","","","","","3","","","","","","3","","","","","","","","","","","Y","","","","","","4","4","4","Y","Um site muito interessante, que nos informa do que está acontecendo em relação a inovação e tecnologia.","Y","Um site que nos informa sobre os projetos e nos da informação sobre a feira.","");
INSERT INTO lime_survey_57346 VALUES("103","1980-01-01 00:00:00","pt","M","41","Campo Mourão","Paraná","UTFPR","2","2","","0","0","0","0","0","0","1","0","-oth-","31","4","4","1","1","","","4","3","4","1","","","4","1","1","2","4","4","3","2","3","","","Y","","","","","","4","4","4","Y","Interessante e criativo.","Y","Muito bom.","");
INSERT INTO lime_survey_57346 VALUES("104","1980-01-01 00:00:00","pt","M","16","Campo Mourão","Paraná","UTFPR","2","1","","0","0","0","1","0","0","0","0","-oth-","10","4","","","","","","4","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO lime_survey_57346 VALUES("105","1980-01-01 00:00:00","pt","F","16","Ipatinga","Minas Gerais","Educação Criativa","1","1","","0","0","0","1","0","0","0","0","-oth-","13","2","2","1","1","","","3","1","4","2","","","2","1","1","1","2","2","1","1","2","","","","","","","Y","","5","5","4","Y","Muito Fácil de encontrar o que procuramos no site.","N","","");
INSERT INTO lime_survey_57346 VALUES("106","1980-01-01 00:00:00","pt","M","31","Imperatriz","Maranhão","Dom Bosco","1","2","","0","0","0","0","0","0","1","0","-oth-","18","4","4","","","","","4","2","4","1","4","TV","3","1","1","2","4","2","2","2","2","","","Y","","","","","","5","4","3","Y","Muito bom, pois informa sobre a feira, dicas e sempre responde as dúvidas.","Y","Economiza tempo e facilita as correções pelo grupo.","");
INSERT INTO lime_survey_57346 VALUES("107","1980-01-01 00:00:00","pt","M","18","Imperatriz","Maranhão","Amaral Raposo","2","1","","0","0","1","0","0","0","0","0","1","","1","1","2","1","","","2","1","1","1","","","2","1","1","1","1","1","1","2","2","","","Y","","","","","","5","2","3","Y","Muito legal pois agente pode tirar algumas dúvidas pelo site.","N","","");
INSERT INTO lime_survey_57346 VALUES("108","1980-01-01 00:00:00","pt","F","37","Imperatriz","Maranhão","Centro de Ensino Amaral Raposo","2","2","","0","0","0","0","0","0","1","0","-oth-","34","3","1","2","1","","","3","2","2","","","","3","1","2","2","1","2","1","1","2","","","","","","","Y","","5","5","5","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("109","1980-01-01 00:00:00","pt","M","18","Imperatriz","Maranhão","Amaral Raposo","2","1","","0","0","1","0","0","0","0","0","-oth-","14","4","1","2","1","","","4","2","4","2","","","4","2","4","3","4","4","4","4","4","","","Y","","","","","","5","4","5","Y","Muito bom: isso porque tirei todas as dúvidas de meu projeto e também pela recepção deles.","Y","Bom, pois é uma forma mais prática de enviar nossos projetos.","");
INSERT INTO lime_survey_57346 VALUES("110","1980-01-01 00:00:00","pt","M","15","Imperatriz","Maranhão","Dom Bosco","1","1","","0","0","0","1","0","0","0","0","-oth-","10","4","2","1","1","","","3","4","1","1","","","4","2","3","2","4","4","2","1","3","","","","","","","Y","","5","3","4","Y","É bom, mas precisa de mais interatividade.","Y","Muito bom.","");
INSERT INTO lime_survey_57346 VALUES("111","1980-01-01 00:00:00","pt","M","15","São Paulo","São Paulo","Giordano Bruno","1","1","","0","0","0","1","0","0","0","0","-oth-","9","4","2","1","2","","","4","3","2","3","","","4","1","2","2","2","4","1","1","2","","","Y","","","","","","3","3","3","Y","Bom.","Y","Ótimo.","");
INSERT INTO lime_survey_57346 VALUES("112","1980-01-01 00:00:00","pt","M","17","São Paulo","São Paulo","Giordano Bruno","1","1","","0","0","0","1","0","0","0","0","-oth-","6","4","","","","","","","4","4","4","","","4","4","","","","4","","","4","","","Y","","","","","","5","3","4","Y","Confuso.","Y","Confuso.","");
INSERT INTO lime_survey_57346 VALUES("113","1980-01-01 00:00:00","pt","M","16","São Paulo","São Paulo","Giordano Bruno","1","1","","0","0","0","1","0","0","0","0","-oth-","7","4","2","2","1","","","4","3","3","4","","","4","3","3","3","4","4","4","4","4","","","Y","","","","","","4","4","3","Y","Bom, fácil de acessar.","Y","Bom.","");
INSERT INTO lime_survey_57346 VALUES("114","1980-01-01 00:00:00","pt","F","16","Toledo"," Paraná","Jardim Porto Alegre","2","1","","1","0","0","1","0","0","0","0","-oth-","8","4","2","1","2","","","4","3","2","1","","","4","2","3","2","2","4","4","2","3","","","Y","Y","","","","","4","4","4","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("115","1980-01-01 00:00:00","pt","M","17","Toledo","Paraná","Jardim Porto Alegre","2","1","","0","0","0","1","0","0","0","0","-oth-","13","4","2","1","1","","","4","2","1","1","","","2","1","1","1","3","4","1","1","4","","","","","","","Y","","4","4","3","Y","Bom site, vários conteúdos interessantes e ajudas.","N","","");
INSERT INTO lime_survey_57346 VALUES("116","1980-01-01 00:00:00","pt","M","16","Toledo","Paraná","CE Jardim Porto Alegre ","2","1","","0","0","0","1","0","0","0","0","-oth-","8","4","4","1","3","","","4","3","2","","","","4","4","4","4","4","4","3","1","4","4","","Y","Y","","Y","","Hi5","1","4","5","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("117","1980-01-01 00:00:00","pt","M","37","Boa Vista","Roraima","EE Ana Libória","2","2","","0","0","0","0","0","0","1","0","-oth-","25","3","","","","","","3","3","","","","","3","","","","","","","","","","","","","","","Y","","5","1","1","Y","Está Muito bom.","Y","O nosso projeto teve muitos erros mas não sei de quem foi.","");
INSERT INTO lime_survey_57346 VALUES("118","1980-01-01 00:00:00","pt","F","17","Boa Vista","Roraima","EE Ana Libória","2","1","","0","0","0","1","0","0","0","0","-oth-","9","1","1","2","2","","","2","","1","1","","","2","1","1","1","2","2","1","2","1","","","Y","","","","","","4","3","4","Y","É um bom site e nos mantém atualizados do evento.","N","","");
INSERT INTO lime_survey_57346 VALUES("119","1980-01-01 00:00:00","pt","M","18","Boa Vista","Roraima","EE Ana Libória","2","1","","0","0","0","1","0","0","0","0","-oth-","7","","","4","","","","4","2","","","","","","2","2","2","4","4","4","2","2","","","Y","","","","","","5","5","5","Y","Gostei muito e acho que é educativo.","N","","Durante os meus acessos a internet gosto muito de interagir com pessoas do mundo inteiro.");
INSERT INTO lime_survey_57346 VALUES("120","1980-01-01 00:00:00","pt","F","16","Fortaleza","Ceará","Manuel da Silva","1","1","","0","0","0","1","0","0","0","0","-oth-","8","4","2","2","1","","","4","2","2","1","","","3","2","2","1","2","4","4","1","2","","","Y","","","","","Hi5","4","4","4","Y","Super esquematizado, tem todas as informações que um participante da feira precisa.","Y","Ótimo, pois facilita a submissão de projetos de todo o Brasil, e depois de mandá-los os participantes ainda podem digitar e completar o projeto. ","");
INSERT INTO lime_survey_57346 VALUES("121","1980-01-01 00:00:00","pt","M","16","Fortaleza","Ceará","Manuel da Silva","1","1","","0","0","0","1","0","0","0","0","-oth-","12","","","3","","","","3","","","","","","3","2","1","3","3","3","2","2","3","","","Y","","","","","","5","3","4","Y","É um site bom, porém podia melhorar um pouco, pois só vejo informações sobre a feira. s=Se possível divulgar os projetos no site.","Y","É bem prático e eficaz.","");
INSERT INTO lime_survey_57346 VALUES("122","1980-01-01 00:00:00","pt","M","32","Fortaleza","Ceará","Manuel da Silva","1","2","","0","0","0","0","0","0","1","0","-oth-","17","3","3","1","2","","","3","3","1","1","","","4","3","3","3","3","3","3","2","3","","","Y","","","","","","5","5","4","Y","Bem elaborado.","Y","Funciona. Sem restrições.","");
INSERT INTO lime_survey_57346 VALUES("123","1980-01-01 00:00:00","pt","F","47","Fortaleza","Ceará","Manuel da Silva","1","2","","0","0","0","0","0","0","1","0","-oth-","40","4","4","2","2","","","4","2","","","","","4","2","2","3","4","","2","1","2","","","Y","","","","","Sonico","4","4","4","Y","Interessante, informativo, muito bom.","Y","Excelente idéia, pois facilita o acesso a essa feira.","");
INSERT INTO lime_survey_57346 VALUES("124","1980-01-01 00:00:00","pt","F","15","Imperatriz","Maranhão","CE Dom Bosco","1","1","","0","0","0","1","0","0","0","0","-oth-","9","4","2","2","1","","","4","2","1","1","","","4","1","2","2","2","4","2","2","2","","","Y","","","","","","5","4","4","Y","Contém informações importantes, mais precisa melhoras.","N","","");
INSERT INTO lime_survey_57346 VALUES("125","1980-01-01 00:00:00","pt","F","16","Imperatriz ","Maranhão","CE Dom Bosco","1","1","","0","0","0","1","0","0","0","0","-oth-","8","4","2","2","1","","","4","2","2","1","","","4","1","2","","3","4","3","1","3","","","Y","","","","","","5","4","4","Y","Por que há informações necessárias para que o aluno não fique desinformado.","Y","Ele é bastante prático.","");
INSERT INTO lime_survey_57346 VALUES("126","1980-01-01 00:00:00","pt","F","16","Imperatriz","Maranhão","CE Dom Bosco","1","1","","0","0","0","1","0","0","0","0","-oth-","8","4","2","2","2","","","4","2","1","1","","","4","2","2","2","4","4","2","1","4","","","Y","","","","","","5","4","4","Y","É bom, pois tem muitas informações importantes.","N","","");
INSERT INTO lime_survey_57346 VALUES("127","1980-01-01 00:00:00","pt","M","16","Inhumas","Goias","IFG Campos Inhumas","2","1","","0","0","0","0","0","1","0","0","-oth-","13","1","2","2","2","","","2","1","1","1","","","2","2","1","1","2","1","2","1","2","","","Y","","","","","","4","2","3","N","","Y","Pelo o que eu conheço é bom e não tive problemas com ele.","");
INSERT INTO lime_survey_57346 VALUES("128","1980-01-01 00:00:00","pt","M","31","Inhumas","Goias","IFG Campus Inhumas","2","2","","0","0","0","0","0","0","1","0","-oth-","15","4","4","2","3","2","","4","4","2","1","","","4","1","3","3","4","2","2","2","2","","","","","","","","Hi 5","4","5","4","Y","Bom site, poderia ter outros espaços para publicações.","Y","Muito bom. Poderia substituir totalmente a submissão via correios (sedex).","Acredito que para o pesquisador um banco de dados com publicações de artigos é algo fundamentalpara avançar em pesquisas.");
INSERT INTO lime_survey_57346 VALUES("129","1980-01-01 00:00:00","pt","M","30","Parnamirim","Rio Grande do Norte","","","","","0","0","0","0","0","0","0","0","-oth-","13","4","4","2","2","","","4","4","4","2","","","4","2","2","3","3","3","2","2","2","","","","","","","Y","","4","4","3","Y","Ok. Manter vídeos e fotos das edições anteriores.","Y","Funcional.","");
INSERT INTO lime_survey_57346 VALUES("130","1980-01-01 00:00:00","pt","M","19","Maraíba","Rio Grande do Norte","Escola Agrícola de Jundiaí","2","1","","1","0","1","0","0","1","0","0","-oth-","17","","4","","","","","4","","","","","","3","1","1","2","","2","3","2","2","","","Y","","","","","","5","4","4","Y","Muito importante para sabermos sobre outros projetos criados.","Y","","Sim, interesses e experiências relacionadas há área de eletrônica e engenharia.");
INSERT INTO lime_survey_57346 VALUES("131","1980-01-01 00:00:00","pt","M","19","Macaíba","Rio Grande do Norte","Escola Agricola de Jundiai","","1","","0","0","0","0","0","1","0","0","-oth-","17","1","3","2","1","1","","4","2","1","1","1","","3","2","2","3","3","4","3","2","3","","","Y","","","","","","5","4","5","Y","Ok!","Y","Ok!","Uma feira on line.");
INSERT INTO lime_survey_57346 VALUES("132","1980-01-01 00:00:00","pt","M","31","Santa Izabel do Pará","Pará","Centro de Estudos Dialectus","1","2","","0","0","0","0","0","0","1","0","-oth-","18","3","2","2","1","1","","3","1","1","1","1","","3","1","1","2","3","2","2","1","2","","","Y","","","","","","5","3","3","Y","Interessante, como veículo divulgador do evento.","Y","Muito bom, pois facilita a submissão.","");
INSERT INTO lime_survey_57346 VALUES("133","1980-01-01 00:00:00","pt","F","16","Santa Izabel","Pará","Dialectus","1","1","","0","0","0","1","0","0","0","0","-oth-","11","3","2","1","1","","","3","1","1","1","","","1","1","1","1","1","3","3","1","1","","","Y","","","","","","5","4","3","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("134","1980-01-01 00:00:00","pt","F","32","Santa Izabel do Pará","Pará","Centro de Estudos Dialectus","1","3","","0","0","0","0","0","0","1","0","-oth-","20","4","3","1","2","3","","4","4","1","2","","","4","2","2","3","2","2","1","1","2","","","","","","","Y","","4","4","4","Y","Considero que é um importante meio de divulgação e acesso às informações sobre os mais diversos assuntos da feira.","N","","A internet diminui as distâncias e agrega as pessoas em torno das informações. Estar conectado é estar em sintonia com o mundo.");
INSERT INTO lime_survey_57346 VALUES("135","1980-01-01 00:00:00","pt","F","44","Santa Izabel do Pará","Pará","CE Dialectus","1","2","","0","0","0","0","0","0","1","0","","","4","4","1","2","","","4","4","3","","","","3","1","3","2","4","","1","1","2","","","","","","","Y","","5","5","4","Y","","","","");
INSERT INTO lime_survey_57346 VALUES("136","1980-01-01 00:00:00","pt","M","","Santa Izabel do Pará","Pará","Centro de Estudos Dialectus","1","","","0","0","0","0","0","0","1","0","-oth-","24","4","2","2","2","","","4","4","","","","","4","4","","","4","","","","","","","","","","","Y","","5","4","4","Y","Bom, suas informações contribuem para compreender o verdadeiro objetivo da feira.","N","","");
INSERT INTO lime_survey_57346 VALUES("137","1980-01-01 00:00:00","pt","M","19","Imperatriz","Maranhão","Santa Terezinha","1","1","","0","0","1","0","0","0","0","0","-oth-","14","4","2","1","2","","","4","1","1","1","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO lime_survey_57346 VALUES("138","1980-01-01 00:00:00","pt","M","16","Santos","São Paulo","Colégio Universitas","1","1","","1","0","0","1","0","0","0","0","-oth-","9","4","2","2","1","","","4","2","1","1","","","4","1","3","2","4","4","1","4","4","","","","","","","Y","","4","4","4","Y","Em poucas palavras, bem organizado.","N","","");
INSERT INTO lime_survey_57346 VALUES("139","1980-01-01 00:00:00","pt","M","16","Santos","São Paulko","Universitas","1","1","","1","0","0","1","0","0","0","0","-oth-","9","4","3","1","1","","","4","1","2","1","","","4","2","1","1","4","4","4","1","4","","","Y","","","","","","4","4","2","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("140","1980-01-01 00:00:00","pt","F","41","Santos","São Paulo","Universitas","1","3","","0","0","0","0","0","0","1","0","-oth-","23","3","4","1","2","","","4","2","1","1","","","","1","1","2","3","1","1","1","2","","","","","","","Y","","5","5","5","Y","Dinâmico","Y","Eficiente","");
INSERT INTO lime_survey_57346 VALUES("141","1980-01-01 00:00:00","pt","F","15","Abaetetuba","Pará","São Francisco Xavier","2","1","","0","0","0","1","0","0","0","0","-oth-","6","4","","","","","","4","3","4","2","","","4","2","2","2","3","4","1","2","2","","","Y","","","","","","5","4","5","Y","Ele é bastante interessante e tem informações possíveis.","N","","Sim, biblografia para ajudar nos projetos, coleta de dados que possam ajudar no nosso projeto.");
INSERT INTO lime_survey_57346 VALUES("142","1980-01-01 00:00:00","pt","F","15","Abaetuba","Pará","ERC São Francisco Xavier ","2","1","","0","0","0","1","0","0","0","0","-oth-","10","4","","","","","","4","","","","","","4","1","","2","4","4","","","","","","Y","","","","","","5","2","3","Y","Bom, eu entro sempre para saber alguma novidade e etc.","N","","Sim, coletas de dados, bibliografia para ajudar no nosso projeto e etc.");
INSERT INTO lime_survey_57346 VALUES("146","1980-01-01 00:00:00","pt","F","41","Ipatinga","Minas Gerais","Educação Criativa","1","2","","0","0","0","0","0","0","1","0","-oth-","25","4","4","2","2","","","4","2","2","1","","","3","1","2","2","4","2","1","","2","","","","","","","Y","","5","5","4","Y","Muito bom.","N","","");
INSERT INTO lime_survey_57346 VALUES("147","1980-01-01 00:00:00","pt","M","15","Ipatinga","Minas Gerais","Educação Criativa","1","1","","0","0","0","1","0","0","0","0","-oth-","10","4","2","1","2","","","4","2","1","1","","","4","3","2","3","3","4","3","1","2","","","Y","Y","","","","","4","3","4","Y","O site é bom, informando várias coisas","N","","");
INSERT INTO lime_survey_57346 VALUES("148","1980-01-01 00:00:00","pt","F","15","Ipatinga","Minas Gerais","Educação Criativa","1","1","","0","0","0","1","0","0","0","0","-oth-","10","4","2","1","1","","","4","2","1","1","","","4","2","2","2","2","4","1","1","2","","","Y","","","","","","4","2","3","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("149","1980-01-01 00:00:00","pt","F","15","Ipatinga","Minas Gerais","Educação Criativa","1","1","","0","0","0","1","0","0","0","0","-oth-","10","4","3","1","1","","","4","2","1","1","","","3","1","1","3","3","4","1","1","2","","","Y","","","","","","4","2","3","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("150","1980-01-01 00:00:00","pt","M","20","Campo Mourão","Paraná","UTFPR","2","1","","0","0","0","1","0","0","0","0","-oth-","15","4","2","2","2","","","4","2","1","1","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO lime_survey_57346 VALUES("151","1980-01-01 00:00:00","pt","M","","Cuiabá","Mato Grosso","Fundação Bradesco","3","1","","0","0","1","0","0","0","0","0","-oth-","9","4","2","1","1","4","Trabalho","4","3","1","1","","","4","2","2","2","4","4","4","4","3","","","Y","","","","","","5","5","4","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("152","1980-01-01 00:00:00","pt","M","33","Cuiabá","Mato Grosso","Fundação Bradesco","3","2","","0","0","0","0","0","0","1","0","-oth-","19","4","4","2","2","","","4","4","2","1","","","4","1","2","3","3","4","2","4","3","","","Y","","","","","","5","5","5","Y","Ótimo","Y","Bom.","");
INSERT INTO lime_survey_57346 VALUES("153","1980-01-01 00:00:00","pt","M","17","São Paulo","São Paulo","Brasileira Israelita Chaim Nachman Bralik","1","1","","0","0","0","1","0","0","0","0","-oth-","10","4","3","1","1","","","4","3","1","1","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO lime_survey_57346 VALUES("154","1980-01-01 00:00:00","pt","M","17","Pouso Alegre","Minas Gerais","Técnica de Eletrônica FMC","1","1","","0","0","0","1","0","1","0","0","-oth-","10","3","3","2","1","","","2","2","1","1","","","3","2","2","2","3","3","2","2","2","","","Y","","","","","","5","3","4","Y","é um site organizado","Y","É mais prático e rápido.","");
INSERT INTO lime_survey_57346 VALUES("155","1980-01-01 00:00:00","pt","M","17","Pouso Alegre","Minas Gerais","Técnica de Eletrônica FMC","1","1","","0","0","0","1","0","1","0","0","-oth-","10","4","2","2","1","","","2","4","1","1","","","4","2","2","2","4","4","1","2","3","","","","","Y","","","","5","3","5","Y","A fácil navegação.","Y","A submissão é rápida, fácil e ágil.","");
INSERT INTO lime_survey_57346 VALUES("156","1980-01-01 00:00:00","pt","M","","Cabo Verde","Minas Gerais","Técnica de Eletrônica FMC","1","1","","0","0","0","1","0","1","0","0","-oth-","10","4","2","1","1","","","2","4","1","1","","","3","2","2","2","3","4","1","2","2","","","Y","","","","","","5","3","4","Y","Um site de fácil acesso.","N","","");
INSERT INTO lime_survey_57346 VALUES("157","1980-01-01 00:00:00","pt","M","","Taquatingá","Distrito Federal","Fundação Bradesco","3","2","","0","0","0","0","0","0","1","0","-oth-","12","4","4","","4","","","4","4","","","","","4","","","3","4","","2","2","3","","","Y","","","","","","5","5","4","Y","Bem organizado.","Y","Na última semana (encerramento da inscrição) ele apresentou alguns problemas.","");
INSERT INTO lime_survey_57346 VALUES("158","1980-01-01 00:00:00","pt","M","17","Ceilândia","Distrito Federal","Fundação Bradesco","3","","","0","0","0","1","0","0","0","0","","","4","2","1","2","","","4","1","1","1","","","4","2","1","2","2","3","1","1","3","","","","","","","Y","","3","4","3","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("159","1980-01-01 00:00:00","pt","M","17","São Paulo","São Paulo","Centro Educacional de Pedreira","3","1","","0","0","0","1","0","1","0","0","-oth-","12","4","2","1","1","","","4","2","1","1","","","4","1","1","2","4","4","3","1","2","","","Y","","","","","","3","4","2","Y","Bem elaborado e as informações são encontradas com facilidade.","Y","Embora peça muitos dados, é fácil de utilizar.","");
INSERT INTO lime_survey_57346 VALUES("160","1980-01-01 00:00:00","pt","M","25","São Paulo","São Paulo","Centro Educacional de Pedreira","3","2","","0","0","0","0","0","0","1","0","-oth-","14","4","4","1","1","","","4","4","1","1","","","4","1","4","4","4","4","4","1","4","","","Y","","","","","","4","4","5","Y","Muito bom, normalmente encontro todas as informações nele.","Y","às vezes não suporta muitos usuários.","");
INSERT INTO lime_survey_57346 VALUES("161","1980-01-01 00:00:00","pt","M","17","São Paulo","São Paulo","Centro Educacional de Pedreira","3","1","","0","0","0","1","1","0","0","0","-oth-","12","4","1","1","3","4","Trabalho","4","3","3","1","","","4","2","1","3","3","3","3","1","2","","","Y","","","","","","4","2","2","Y","Boa navegação.","Y","Boa navegação.","");
INSERT INTO lime_survey_57346 VALUES("162","1980-01-01 00:00:00","pt","M","36","São João Del Rei","Minas Gerais","Fundação Bradesco","3","2","","0","0","0","0","0","0","1","0","-oth-","15","4","3","1","2","","","4","3","1","1","","","4","2","2","2","3","2","1","2","3","","","","","","","Y","","5","4","4","Y","Simples, claro e objetivo","Y","Simples, claro e objetivo","");
INSERT INTO lime_survey_57346 VALUES("163","1980-01-01 00:00:00","pt","M","15","São João Del Rei","Minas Gerais","Fundação Bradesco","3","1","","0","0","0","1","0","0","0","0","-oth-","6","4","2","1","1","","","4","3","2","1","","","3","","4","4","3","4","4","2","3","","","Y","","","","","","5","3","4","Y","Interessante, informativo","Y","Organizado, eficaz e de simples manuseio","");
INSERT INTO lime_survey_57346 VALUES("164","1980-01-01 00:00:00","pt","M","20","Santa Izabel do Pará","Pará","E. E. E. Tecnológico do Pará Magalhães Barata","2","1","","0","0","1","0","0","1","0","0","","","4","2","2","2","","","4","2","4","2","","","4","2","2","2","2","2","2","2","2","","","Y","","","","","","4","4","4","Y","Sim, conheço","Y","","");
INSERT INTO lime_survey_57346 VALUES("165","1980-01-01 00:00:00","pt","M","55","Belém","Pará","E. E. E. Tecnológico do Pará Magalhães Barata","2","2","","0","0","0","0","0","0","1","0","","","4","4","","","","","4","4","","","","","4","","","","4","","4","","","","","Y","","","","","","5","4","4","Y","Muito bom.","Y","Precisa aumentar a capacidade de transferência de dados.","Nada a declarar...");
INSERT INTO lime_survey_57346 VALUES("166","1980-01-01 00:00:00","pt","M","20","Ananindeua","Pará","EETPA Juscelino Kubitschek de Oliveira","2","1","","0","0","0","0","1","0","0","0","-oth-","16","3","1","2","1","","","3","1","1","1","","","3","2","1","2","3","3","2","2","2","","","Y","","","","","","5","4","2","Y","O site atende bem as necessidades.","N","","");
INSERT INTO lime_survey_57346 VALUES("167","1980-01-01 00:00:00","pt","F","20","Marituba","Pará","EETPA Juscelino Kubitschek de Oliveira","2","1","","0","0","0","0","1","0","0","0","-oth-","15","","2","3","1","","","3","1","2","1","","","2","1","1","2","3","3","3","2","2","","","Y","","","","","","4","4","4","N","","","","");
INSERT INTO lime_survey_57346 VALUES("168","1980-01-01 00:00:00","pt","F","26","Belém","Pará","EETPA Juscelino Kubitschek de Oliveira","2","2","","0","0","0","0","0","0","1","0","-oth-","15","4","4","","","","","4","4","4","1","","","4","1","1","2","2","3","2","","2","","","Y","","","","","","5","5","5","Y","Informativo e atualizado.","Y","Fácil de acessar.","Facilidade de comunicação.");
INSERT INTO lime_survey_57346 VALUES("169","1980-01-01 00:00:00","pt","M","16","São Paulo","São Paulo","Bialik","1","1","","0","0","0","1","0","0","0","0","-oth-","10","3","2","2","1","","","3","2","1","2","","","3","2","1","1","1","3","3","1","3","","","Y","","","","","","4","1","4","Y","Não é prático.","Y","Bem interessante, pois assim temos uma grande variedades de projetos.","Não");
INSERT INTO lime_survey_57346 VALUES("173","1980-01-01 00:00:00","pt","M","28","São Paulo","São Paulo","Morumbi Sul","1","2","","0","0","0","0","0","0","1","0","-oth-","5","4","3","2","2","","","4","4","4","4","","","4","4","4","4","4","4","4","4","4","","","Y","","","","","","5","5","5","Y","Bom!","Y","Boa opção!","Não");
INSERT INTO lime_survey_57346 VALUES("171","1980-01-01 00:00:00","pt","F","18","Miranda","Mato Grosso do Sul","Fundação Bradesco","3","1","","0","0","1","0","1","0","0","0","-oth-","11","1","3","2","2","","","3","2","2","1","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO lime_survey_57346 VALUES("174","1980-01-01 00:00:00","pt","F","17","Mambori","Paraná","João XXIII","2","1","","0","0","0","1","0","0","0","0","-oth-","12","1","2","1","1","3","Livraria","3","1","1","1","","","3","2","1","1","2","3","1","2","2","","","Y","","","","","","4","4","5","Y","É muito interessante.","N","","Não");
INSERT INTO lime_survey_57346 VALUES("175","1980-01-01 00:00:00","pt","F","12","Tailândia","Pará","Profº Gabriel Lage da Silva","2","1","","0","1","0","0","0","0","0","0","-oth-","9","4","","","","","","4","","","","","","4","2","1","2","2","1","1","2","3","","","Y","","","","","","4","3","5","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("176","1980-01-01 00:00:00","pt","M","12","Tailândia","Pará","Profº Gabriel Lage da Silva","2","1","","0","1","0","0","0","0","0","0","-oth-","10","1","1","3","1","","","3","2","4","3","","","3","3","3","3","2","1","3","3","3","","","Y","","","","","","4","3","4","Y","Bom, relata informações importantes para o incentivo dos alunos a serem um jovem cientista.","N","","Sim, a internet é a porta virtual do mundo.");
INSERT INTO lime_survey_57346 VALUES("177","1980-01-01 00:00:00","pt","F","29","Tailândia","Pará","Profº Gabriel Lage da Silva","2","2","","0","0","0","0","0","0","0","1","-oth-","15","4","2","1","1","","","2","4","1","1","","","2","1","1","3","3","2","1","1","1","","","","","","","Y","","4","4","4","Y","Possui informações interessantes e esclarecedoras.","N","","");
INSERT INTO lime_survey_57346 VALUES("178","1980-01-01 00:00:00","pt","F","13","Tailândia","Pará","Profº Gabriel Lage da Silva","2","1","","0","1","0","0","0","0","0","0","-oth-","4","1","1","3","1","","","3","2","2","1","","","3","2","1","2","3","3","3","3","2","","","Y","Y","","","","","4","3","4","Y","Eu acho que precisava que as informações estivessem de maneira mais clara e objetiva.","N","","É importante para nós nos informarmos sobre o mundo mas de forma interativa, TV é chato.");
INSERT INTO lime_survey_57346 VALUES("179","1980-01-01 00:00:00","pt","F","35","Tailândia","Pará","Profº Gabriel Lage da Silva","2","2","","0","0","0","0","0","0","1","0","-oth-","20","3","2","2","2","","","3","2","2","2","","","2","2","2","2","2","2","3","2","2","","","Y","Y","","","","","4","4","4","Y","Contem muitas informações de nível diferenciado sobre diversos assuntos e pesquisas","Y","para verificação da autenticidade das pesquisas científicas","Conhecer várias pessoas online e assim visitar vários lugares, sem viajar.");
INSERT INTO lime_survey_57346 VALUES("180","1980-01-01 00:00:00","pt","M","18","São José dos Campos","São Paulo","Técnica Professor Everardo Passos","1","3","","0","0","1","0","0","1","0","0","-oth-","12","2","2","2","2","","","2","1","1","1","","","3","1","1","1","2","2","2","1","1","","","Y","","","","","","3","4","2","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("181","1980-01-01 00:00:00","pt","M","18","São José dos Campos","São Paulo","Técnica Professor Everardo Passos","1","1","","0","0","1","0","0","1","0","0","-oth-","10","4","3","2","1","","","4","1","1","1","","","4","2","1","1","4","4","3","3","4","","","Y","","","","","","5","4","4","Y","possuir as informações com fácil acesso e bem conciso","Y","nele se descreve todo o projeto, nomes dos integrantes e documentação","");
INSERT INTO lime_survey_57346 VALUES("182","1980-01-01 00:00:00","pt","M","25","Campo Mourão","Paraná","UTFPR","2","2","","0","0","0","0","0","0","0","1","-oth-","16","3","4","1","2","","","2","4","1","1","","","4","2","1","2","3","4","1","1","1","","","","","","","Y","","5","4","2","Y","bem elaborado e de fácil acesso as informações pertinentes","Y","prático","não");
INSERT INTO lime_survey_57346 VALUES("183","1980-01-01 00:00:00","pt","F","19","Belém","Pará","E. E. E. Tecnológico do Pará Magalhães Barata","2","1","","0","0","0","0","0","1","0","0","-oth-","14","1","2","2","1","","","2","2","4","1","","","2","1","2","2","2","2","2","2","2","","","Y","","","","","Sonico","4","3","4","Y","bastante interativo e informativo","N","","");
INSERT INTO lime_survey_57346 VALUES("184","1980-01-01 00:00:00","pt","F","20","Barcarena","Pará","E. E. E. Tecnológico do Pará Magalhães Barata","2","1","","0","0","0","0","0","1","0","0","-oth-","15","1","2","3","1","","","1","1","1","2","","","2","1","1","2","3","1","2","1","1","","","Y","","","","","","4","4","4","Y","importante para nós da área de pesquisa para ficarmos informados sobre a possibilidade de demonstrar nossas idéias.","N","","não");
INSERT INTO lime_survey_57346 VALUES("185","1980-01-01 00:00:00","pt","F","17","Rio Claro","São Paulo","Puríssimo","1","1","","0","0","0","1","0","0","0","0","-oth-","12","4","4","2","1","","","3","1","1","1","","","4","1","1","2","2","3","3","1","3","","","Y","","","","","","4","3","4","Y","muito organizado","Y","adequado","");
INSERT INTO lime_survey_57346 VALUES("186","1980-01-01 00:00:00","pt","F","16","Rio Claro","São Paulo","Puríssimo","1","1","","0","0","0","1","0","0","0","0","-oth-","10","3","2","1","1","","","3","2","1","1","","","3","2","1","1","2","3","3","1","2","","","Y","","","","","","5","4","4","Y","ótimo","Y","muito bem organizado","");
INSERT INTO lime_survey_57346 VALUES("187","1980-01-01 00:00:00","pt","M","27","Rio Claro","São Paulo","Puríssimo","1","2","","0","0","0","0","0","0","1","0","-oth-","16","4","4","","","","","4","1","3","1","","","4","1","1","2","4","2","1","1","4","","","","","","","Y","","4","1","2","Y","muito bom, completo","Y","muito bom","");
INSERT INTO lime_survey_57346 VALUES("188","1980-01-01 00:00:00","pt","","","São Paulo","São Paulo","Centro Educacional de Pedreira","3","1","","0","0","0","1","0","0","0","0","-oth-","8","4","2","2","2","","","4","1","2","1","","","2","3","2","2","3","4","1","1","2","","","Y","","","","","","4","1","3","Y","ele é bem estruturado para o auxílio às pessoas interessadas em participar e/ou conhecer","N","","");
INSERT INTO lime_survey_57346 VALUES("189","1980-01-01 00:00:00","pt","M","15","São Paulo","São Paulo","Centro Educacional de Pedreira","3","1","","0","0","0","1","0","0","0","0","","","3","3","1","1","","","3","1","1","1","","","4","2","2","1","4","4","4","1","3","","","Y","","","","","","5","1","3","Y","bem estruturado e fácil de navegar","Y","muito bem estruturado, mas com poucas opções","");
INSERT INTO lime_survey_57346 VALUES("190","1980-01-01 00:00:00","pt","M","15","São Paulo","São Paulo","Centro Educacional de Pedreira","3","1","","1","0","0","0","0","0","0","0","-oth-","9","2","2","2","2","","","2","1","1","1","","","3","2","2","2","3","2","1","2","2","","","","","","","Y","","4","3","2","Y","muito bom, o site é bem estruturado","N","","");
INSERT INTO lime_survey_57346 VALUES("191","1980-01-01 00:00:00","pt","M","14","Londrina","Paraná","Interativa","1","1","","0","0","0","1","0","0","0","0","-oth-","5","4","3","1","1","","","4","2","1","1","","","4","3","1","1","4","4","4","1","4","","","Y","","","","","","4","4","4","Y","é bom, pois tem as informações bem detalhadas.","Y","é bom, tem as informações rápidas e detalhadas no qual é ótimo.","");
INSERT INTO lime_survey_57346 VALUES("192","1980-01-01 00:00:00","pt","F","18","Jacareí","São Paulo","ETEP","1","1","","0","0","1","0","0","1","0","0","-oth-","10","4","3","2","2","","","4","1","1","1","","","3","1","1","2","2","2","2","1","2","","","Y","","","","","","4","4","4","","","N","","");
INSERT INTO lime_survey_57346 VALUES("193","1980-01-01 00:00:00","pt","M","17","São José dos Campos","São Paulo","ETEP","1","1","","0","0","1","0","0","1","0","0","-oth-","7","4","2","1","1","","","4","4","1","1","","","4","1","1","1","4","2","2","1","2","","","Y","","","","","","4","4","","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("194","1980-01-01 00:00:00","pt","M","17","São José dos Campos","São Paulo","ETEP","1","1","","0","0","1","0","0","1","0","0","-oth-","13","3","3","1","3","","","3","3","1","1","","","3","1","1","3","3","1","1","1","3","","","","","","","Y","","5","5","5","Y","nenhum opinião formada","N","","");
INSERT INTO lime_survey_57346 VALUES("195","1980-01-01 00:00:00","pt","F","16","Araras","São Paulo","Koelle","1","1","","0","0","0","1","0","0","0","0","-oth-","10","4","3","1","1","","","4","1","1","1","","","4","1","1","1","1","3","1","1","3","","","Y","","","","","","4","3","2","Y","é muito organizado","Y","é bem eficiente e prestativo","");
INSERT INTO lime_survey_57346 VALUES("196","1980-01-01 00:00:00","pt","M","16","Palmas","Tocantins","Marista de Palmas","1","1","","0","0","0","1","0","0","0","0","-oth-","8","4","2","2","2","","","4","2","2","2","","","4","2","2","2","4","4","4","2","3","","","Y","","","","","","4","4","2","Y","muito bom - poderia conter mais material como vídeo e mais fotos.","Y","muito bom","");
INSERT INTO lime_survey_57346 VALUES("197","1980-01-01 00:00:00","pt","M","17","Palmas","Tocantins","Escola Técnica Federal","2","1","","0","0","0","0","0","1","0","0","-oth-","14","4","2","2","1","","","4","2","1","1","","","4","1","1","2","4","4","4","1","2","","","Y","","","","","","4","3","3","Y","bom","Y","bom","");
INSERT INTO lime_survey_57346 VALUES("198","1980-01-01 00:00:00","pt","M","32","Palmas","Tocantins","Escola Técnica Federal","2","2","","0","0","0","0","0","0","1","0","-oth-","15","4","4","2","2","","","4","4","3","1","","","4","2","2","2","4","2","2","2","2","","","Y","","","","","","4","4","2","Y","excelente","Y","muito bom","");
INSERT INTO lime_survey_57346 VALUES("199","1980-01-01 00:00:00","pt","M","17","Paragominas","Pará","Fundação Bradesco","3","1","","0","0","1","0","0","0","0","0","-oth-","10","4","2","2","1","","","4","1","1","1","","","3","2","1","2","4","4","4","1","2","","","Y","","","","","","4","3","2","Y","é uma excelente oportunidade para incentivar os alunos do Brasil a desenvolver trabalhos científicos","N","","");
INSERT INTO lime_survey_57346 VALUES("200","1980-01-01 00:00:00","pt","M","30","Paragominas","Pará","Fundação Bradesco","3","2","","0","0","0","0","0","0","1","0","-oth-","15","3","2","","1","","","3","3","1","1","","","3","2","2","2","3","3","2","2","2","","","Y","","","","","","5","4","4","Y","site simples com visual clean porém preciso nas informações","","","");
INSERT INTO lime_survey_57346 VALUES("201","1980-01-01 00:00:00","pt","F","20","Abaetetuba","Pará","São Francisco Xavier","2","1","","0","0","0","1","0","0","0","0","","","1","1","3","1","","","","","","","","","3","1","","","","","2","1","","","","Y","","","","","","4","3","2","Y","ele contribui para meu conhecimento ","N","","");
INSERT INTO lime_survey_57346 VALUES("202","1980-01-01 00:00:00","pt","M","16","Abaetetuba","Pará","São Francisco Xavier","2","1","","0","0","0","1","0","0","0","0","-oth-","10","1","1","3","1","","","3","1","3","1","","","3","3","1","3","3","4","2","1","4","","","Y","","","","","","5","2","4","Y","","N","","");
INSERT INTO lime_survey_57346 VALUES("203","1980-01-01 00:00:00","pt","M","17","São Paulo","São Paulo","Centro Educacional de Pedreira","3","1","","0","0","0","0","0","0","0","1","-oth-","13","2","","","","","","2","","","","","","2","2","1","2","2","1","1","1","2","","","","","","","Y","","5","3","4","Y","considero o site da febrace um bom site, com o conteúdo necessário para nós estudantes","Y","ótimo, porque é muito mais rápido em relação aos outros modos de envio, como os correios e a entega pessoal.","");
INSERT INTO lime_survey_57346 VALUES("204","1980-01-01 00:00:00","pt","F","16","Rio Claro","São Paulo","Puríssimo","1","1","","0","0","0","1","0","0","0","0","-oth-","5","4","2","1","1","","","4","2","1","1","","","4","2","1","1","3","3","1","1","4","","","Y","","","","","","3","2","3","Y","organizado e interessante","Y","competente","");
INSERT INTO lime_survey_57346 VALUES("205","1980-01-01 00:00:00","pt","M","19","Rio de Janeiro","Rio de Janeiro","Técnica Resende Rammel","1","1","","0","0","0","0","0","1","0","0","-oth-","9","4","3","1","1","","","4","3","2","1","","","4","2","2","3","4","4","4","1","3","","","Y","Y","","","","","4","3","3","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("206","1980-01-01 00:00:00","pt","M","43","Rio de Janeiro","Rio de Janeiro","Técnica Resende Rammel","1","2","","0","0","0","0","0","0","1","0","-oth-","30","4","4","","4","","","4","4","","","","","4","","4","4","4","","","","","","","","","","","","","5","5","3","Y","certas etapas são confusas","Y","muito eficaz","");
INSERT INTO lime_survey_57346 VALUES("207","1980-01-01 00:00:00","pt","M","15","Rio de Janeiro","Rio de Janeiro","Técnica Resende Rammel","1","1","","0","0","0","0","0","1","0","0","-oth-","11","4","4","","","","","4","","","","","","2","1","1","1","1","2","2","1","2","","","Y","","","","","","4","4","5","Y","é um site que passa as informações claras da feira","N","","");
INSERT INTO lime_survey_57346 VALUES("208","1980-01-01 00:00:00","pt","M","14","São José dos Campos","São Paulo","Centro Cultural Esplanada","3","1","","0","0","0","1","0","0","0","0","-oth-","9","4","2","1","2","","","4","2","1","2","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO lime_survey_57346 VALUES("209","1980-01-01 00:00:00","pt","M","16","São José dos Campos","São Paulo","Poliedro","1","1","","0","0","0","1","0","0","0","0","-oth-","6","4","2","1","1","","","4","2","1","1","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO lime_survey_57346 VALUES("210","1980-01-01 00:00:00","pt","F","18","São Paulo","São Paulo","","2","1","","0","0","1","0","0","0","0","0","-oth-","13","1","1","3","2","","","3","4","4","1","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO lime_survey_57346 VALUES("211","1980-01-01 00:00:00","pt","F","17","Tailândia","Pará","E. E. E. M. São Franscisco de Assis","2","1","","0","0","0","1","0","0","0","0","-oth-","15","4","1","1","1","","","4","1","1","1","","","4","1","1","1","2","4","4","1","2","","","Y","","","","","","5","4","3","Y","é um site muito bem explicado e isso é muito bom. Possui exemplos que facilita muito.","N","","");
INSERT INTO lime_survey_57346 VALUES("221","1980-01-01 00:00:00","pt","F","17","Paraibuna","São Paulo","E. E. Coronel Edurado José de Camargo","2","1","","0","0","0","1","0","0","0","0","-oth-","8","","","3","","","","3","","","","","","3","1","1","1","1","3","3","1","2","","","Y","","","","","","4","3","3","Y","penso que o site diminui a distância do jovem com o meio científico.","","","");
INSERT INTO lime_survey_57346 VALUES("213","1980-01-01 00:00:00","pt","F","43","Tailândia","Pará","E. E. E. M. São Franscisco de Assis","2","2","","0","0","0","0","0","0","1","0","","","3","3","1","1","","","3","1","1","1","","","3","1","1","2","2","1","2","1","1","","","Y","","","","","","5","4","3","Y","excelente, bem organizado em suas informações.","Y","no meu trabalho houve um problema, no momento de enviar os nomes das alunas.","quero aprender sobre como navegar na Internet, cada vez melhor.");
INSERT INTO lime_survey_57346 VALUES("214","1980-01-01 00:00:00","pt","F","15","Tailândia","Pará","E. E. E. M. São Franscisco de Assis","2","1","","0","0","0","1","0","0","0","0","-oth-","15","1","1","1","1","","","2","1","1","1","","","2","1","1","1","2","2","1","1","1","","","Y","","","","","","4","4","3","Y","ótimo","N","","");
INSERT INTO lime_survey_57346 VALUES("215","1980-01-01 00:00:00","pt","F","15","Tailândia","Pará","E. E. E. M. São Franscisco de Assis","2","1","","0","0","0","1","0","0","0","0","-oth-","14","1","1","3","1","","","3","1","1","1","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO lime_survey_57346 VALUES("216","1980-01-01 00:00:00","pt","M","15","Campinas","São Paulo","Instituto Educacional Imaculada","1","1","","0","0","0","1","0","0","0","0","-oth-","10","3","2","1","1","2","casa de amigo","3","1","1","2","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO lime_survey_57346 VALUES("217","1980-01-01 00:00:00","pt","M","16","Ceres","Goiás","Instituto Federal Goiano","2","1","","0","0","0","1","0","1","0","0","-oth-","11","1","4","2","3","","","4","2","1","1","","","4","2","2","2","3","2","2","2","2","","","Y","","","","","","4","4","2","Y","ele tem muitas informações para retirar dúvidas, mas poderia ser mais \"claro\".","Y","bom, é apenas ler as instruções.","");
INSERT INTO lime_survey_57346 VALUES("218","1980-01-01 00:00:00","pt","F","17","Ceres","Goiás","Instituto Federal Goiano","2","1","","0","0","0","1","0","1","0","0","-oth-","14","1","4","2","1","","","4","1","1","1","","","3","1","1","2","4","2","1","2","2","","","Y","","","","","","5","4","4","Y","acho um site muito interessante, podendo conhecer várias coisas.","Y","legal, podendo se informar.","");
INSERT INTO lime_survey_57346 VALUES("219","1980-01-01 00:00:00","pt","M","16","Ceres","Goiás","Instituto Federal Goiano","2","1","","0","0","0","1","0","1","0","0","-oth-","12","1","4","2","1","","","4","4","1","1","","","4","1","2","2","3","3","3","2","2","","","Y","","","","","","5","4","4","Y","acho um site interessante, onde podemos ver várias coisas novas.","Y","legal, é só ler e aprender como funciona.","");
INSERT INTO lime_survey_57346 VALUES("220","1980-01-01 00:00:00","pt","F","16","Ceres","Goiás","Instituto Federal Goiano","2","1","","0","0","0","0","0","1","0","0","-oth-","10","","4","2","","","","4","3","","","","","3","1","1","1","2","2","1","2","2","","","Y","","","","","","5","4","4","Y","é um site muito interessante e contém todas as informações sobre o que preciso.","N","","");
INSERT INTO lime_survey_57346 VALUES("222","1980-01-01 00:00:00","pt","F","16","Paraibuna","São Paulo","E. E. Coronel Edurado José de Camargo","2","1","","0","0","0","1","0","0","0","0","-oth-","10","1","1","3","3","","","3","1","1","1","","","3","1","1","2","3","3","3","1","2","","","Y","","","","","","4","4","4","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("223","1980-01-01 00:00:00","pt","M","14","Campinas","São Paulo","Instituto Educacional Imaculada","1","1","","0","0","0","1","0","0","0","0","-oth-","5","4","3","2","1","","","4","2","2","1","","","4","4","2","2","3","4","4","4","4","","","Y","","","","","","4","4","3","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("224","1980-01-01 00:00:00","pt","M","16","Jaraguá do Sul","Santa Catarina","Weg Equipamentos Elétricos","1","1","","0","0","0","1","0","1","0","0","-oth-","10","3","2","1","2","","","3","2","2","1","","","3","1","2","2","3","3","3","1","2","","","Y","Y","","","","","4","3","2","Y","é objetivo, não tem poluição visual.","Y","perguntas não objetivas","");
INSERT INTO lime_survey_57346 VALUES("225","1980-01-01 00:00:00","pt","M","16","Jaraguá do Sul","Santa Catarina","Weg Equipamentos Elétricos","1","1","","0","0","0","1","0","1","0","0","-oth-","12","4","1","1","1","","","4","1","1","1","","","4","1","2","2","2","4","4","1","2","","","Y","","","","","","4","3","1","Y","bom, de fácil acesso e entendimento.","Y","bom, porém meio confuso, útil.","sim, discussões e debates na internet são bem interessantes.");
INSERT INTO lime_survey_57346 VALUES("226","1980-01-01 00:00:00","pt","M","18","Salvador","Bahia","Colégio da Polícia Militar","2","1","","0","0","0","1","0","0","0","0","-oth-","14","3","2","1","2","","","4","3","2","1","","","4","4","1","2","4","4","4","1","3","","","Y","","","","","","5","5","5","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("227","1980-01-01 00:00:00","pt","F","40","Salvador","Bahia","UFBA","2","2","","0","0","0","0","0","0","1","0","-oth-","18","4","4","1","3","","","4","4","2","1","","","4","1","1","2","3","1","1","1","1","","","","","","","Y","","5","5","5","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("228","1980-01-01 00:00:00","pt","M","17","Salvador","Bahia","Odorico Tavares","2","1","","0","0","1","0","0","0","0","0","-oth-","11","4","2","2","2","","","4","2","1","1","","","4","2","2","2","4","4","3","1","3","","","Y","","","","","","5","4","3","Y","o site é informativo quanto para os preparativos da feira.","Y","no meu caso, funcionou com eficiência e praticidade.","");
INSERT INTO lime_survey_57346 VALUES("229","1980-01-01 00:00:00","pt","M","19","Niterói","Rio de Janeiro","E. T. E. Henrique Lage","2","1","","0","0","0","0","0","1","0","0","-oth-","12","4","2","2","2","","","4","2","1","1","","","4","2","1","2","2","4","4","3","2","","","Y","","","","","","5","4","4","Y","muito bom","Y","eficiente","");
INSERT INTO lime_survey_57346 VALUES("230","1980-01-01 00:00:00","pt","M","18","Itaboraí","Rio de Janeiro","E. T. E. Henrique Lage","2","1","","0","0","0","0","1","0","0","0","-oth-","11","4","2","2","2","","","4","4","1","1","","","4","2","2","3","2","4","3","2","2","","","Y","","","","","","5","3","5","Y","o site da febrace é organizado, bonito e tem úteis informações. ","N","","o fácil acesso a informações em geral");
INSERT INTO lime_survey_57346 VALUES("231","1980-01-01 00:00:00","pt","M","18","São Gonçalo","Rio de Janeiro","E. T. E. Henrique Lage","2","1","","0","0","0","0","0","1","0","0","-oth-","10","4","2","2","1","","","4","2","1","1","","","2","3","3","2","2","2","4","1","3","","","Y","","","","","","5","4","5","Y","um site muito bom, com links diretos, simples e bem organizado.","Y","simples e direto, mostra exatamente o que fazer e como preencher todos os dados.","");
INSERT INTO lime_survey_57346 VALUES("232","1980-01-01 00:00:00","pt","F","17","Jaraguá do Sul","Santa Catarina","Weg Equipamentos Elétricos","1","1","","0","0","0","1","0","1","0","0","-oth-","10","1","2","3","2","","","3","2","1","1","","","3","2","2","1","2","3","3","1","2","","","Y","","","","","","5","3","2","Y","dificuldade de achar alguns links como o login.","N","","");
INSERT INTO lime_survey_57346 VALUES("233","1980-01-01 00:00:00","pt","F","16","Jaraguá do Sul","Santa Catarina","Weg Equipamentos Elétricos","1","1","","0","0","0","1","0","1","0","0","-oth-","10","3","2","2","1","","","3","2","1","1","","","3","2","1","2","2","3","3","1","3","","","Y","Y","","","","","5","3","2","Y","pouca facilidade na hora de achar os links.","N","","");
INSERT INTO lime_survey_57346 VALUES("234","1980-01-01 00:00:00","pt","M","20","Ceres","Goiás","Instituto Federal Goiano","2","1","","0","0","1","0","0","1","0","0","-oth-","16","1","2","2","1","","","2","","","","","","2","","","","2","2","","2","2","","","Y","","","","","","4","2","4","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("235","1980-01-01 00:00:00","pt","F","20","Ceres","Goiás","Instituto Federal Goiano","2","1","","0","0","1","0","0","1","0","0","-oth-","10","1","2","2","2","","","3","1","1","1","","","3","2","1","1","2","3","2","2","3","","","Y","","","","","","4","4","3","Y","é um site interessante e bem amplo.","N","","");
INSERT INTO lime_survey_57346 VALUES("236","1980-01-01 00:00:00","pt","F","39","São Paulo","São Paulo","Stance Dual School","1","2","","0","0","0","0","0","0","1","0","-oth-","22","4","4","1","2","","","4","4","3","1","","","4","2","4","4","4","4","4","4","4","","","Y","","","","","","5","5","5","Y","excelente","N","","");
INSERT INTO lime_survey_57346 VALUES("237","1980-01-01 00:00:00","pt","M","21","Cariacica","Espírito Santo","IFES","2","","","0","0","0","0","1","0","0","0","-oth-","18","3","4","1","2","","","4","1","4","2","","","4","2","2","2","4","3","","","","","","Y","","","","","","5","4","4","Y","ele dá a informações necessárias ao desenvolvimento de projetos.","Y","apresenta-se de maneira muito informativa quanto a submissão, mas o limite do arquivo a ser anexado é muito pequeno.","aumentar a divulgação da feira em instituições federais e o limite (tamanho) do arquivo a ser anexado.");
INSERT INTO lime_survey_57346 VALUES("238","1980-01-01 00:00:00","pt","M","","Vitória","Espírito Santo","IFES","2","3","","0","0","0","0","0","0","1","0","-oth-","20","3","4","1","2","","","4","4","1","1","","","4","1","2","2","3","1","1","1","2","","","","","","","Y","","5","5","5","","muito importante para a formação estudantil, tecnologia e motivar novos projetos.","N","","na minha opinião, poderia ser mais divulgado. outras formas de divulgação. na minha escola, por exemplo, muitos não sabiam deste evento.");
INSERT INTO lime_survey_57346 VALUES("239","1980-01-01 00:00:00","pt","M","40","Ceres","Goiás","Instituto Federal Goiano","2","2","","0","0","0","0","0","0","1","0","-oth-","18","4","4","1","2","2","aeroportos","4","4","2","1","","","4","2","3","3","4","4","2","2","2","","","Y","","Y","","","","5","5","5","Y","muito bem estruturado, leve, mas o acesso ao login torna-se uma icógnita!","Y","bastante prático mas falta a opção de no final do envio ele mostrar um relatório do que foi submetido.","é uma ferramenta educacional e social muito interessante quando usada corretamente.");
INSERT INTO lime_survey_57346 VALUES("240","1980-01-01 00:00:00","pt","M","30","Salvador","Bahia","Externato Mater et Marista","","2","","0","0","0","0","0","0","0","1","-oth-","16","","4","","","4","Trabalho","4","4","4","4","","","4","2","4","3","4","4","3","3","3","","","Y","Y","","","","","5","5","4","Y","falta divulgação das feiras afiliadas, fotos, notícias, etc.","Y","o processo é tranquilo.","ampliar o contato entre partipantes, principalmente, integrando projetos relacionados.");
INSERT INTO lime_survey_57346 VALUES("241","1980-01-01 00:00:00","pt","M","14","Salvador","Bahia","Externato Mater et Magistra","1","","","0","0","0","1","0","0","0","0","-oth-","10","3","2","1","1","","","3","2","1","1","","","3","3","1","2","2","3","1","1","1","","","","","","","Y","","4","2","3","Y","é um site bem estruturado e organizado.","N","","");
INSERT INTO lime_survey_57346 VALUES("242","1980-01-01 00:00:00","pt","F","19","Ceres","Goiás","Instituto Federal Goiano","2","1","","0","0","0","0","0","1","0","0","-oth-","8","2","2","1","1","","","3","3","2","2","","","3","1","2","1","3","3","2","3","3","","","Y","","","","","","4","4","3","Y","interessante","N","","");
INSERT INTO lime_survey_57346 VALUES("243","1980-01-01 00:00:00","pt","F","30","Salvador","Bahia","UFBA","2","2","","0","0","0","0","0","0","1","0","-oth-","10","4","4","1","2","","","4","4","1","1","","","4","2","1","2","3","1","1","1","3","","","Y","","","","","","4","5","5","Y","muito interessante e bem organizado.","Y","o formulário é um pouco burocrático e engessado.","");
INSERT INTO lime_survey_57346 VALUES("244","1980-01-01 00:00:00","pt","M","17","Salvador","Bahia","Colégio da Polícia Militar","2","1","","0","0","0","1","0","0","0","0","-oth-","13","4","1","2","1","","","4","1","2","1","","","3","4","4","3","3","2","4","4","3","","","Y","","","","","","5","5","4","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("245","1980-01-01 00:00:00","pt","F","17","Salvador","Bahia","Odorico Tavares","2","1","","0","0","1","0","0","0","0","0","-oth-","10","4","2","3","2","","","4","2","4","2","","","4","2","2","2","2","4","1","1","4","","","Y","","","","","","5","4","5","Y","muito interessante, traz ao seu público uma vasta informação sobre a feira.","Y","muito bom, foi através dele que enviamos o nosso projeto.","");
INSERT INTO lime_survey_57346 VALUES("246","1980-01-01 00:00:00","pt","F","16","Imperatriz","Maranhão","Santa Luzia","1","1","","0","0","0","1","0","0","0","0","-oth-","13","4","2","1","2","","","4","2","1","1","","","4","1","2","1","2","4","4","2","2","","","Y","","","","","","5","4","3","Y","site interessante, esclarecedor de dúvidas frequentes e possui um visual bem interessante.","Y","facilita muito o envio dos projetos.","");
INSERT INTO lime_survey_57346 VALUES("247","1980-01-01 00:00:00","pt","F","16","Imperatriz","Maranhão","Santa Luzia","1","1","","0","0","0","1","0","0","0","0","-oth-","13","3","2","2","1","","","3","2","1","1","","","4","1","2","1","","3","1","1","2","","","Y","","","","","","5","4","3","","é um site interessante, esclarecedor de dúvidas frequentes, é bem organizado.","Y","facilita muito o envio de projetos","sim. através da mesma se relacionamos mais fácil.");
INSERT INTO lime_survey_57346 VALUES("248","1980-01-01 00:00:00","pt","F","16","Imperatriz","Maranhão","Santa Luzia","1","1","","0","0","0","1","0","0","0","0","-oth-","13","3","2","2","1","","","3","2","1","1","","","2","","2","1","3","3","1","1","2","","","Y","","","","","","5","2","3","Y","o site é muito bom, pois oferece todas as informações necessárias.","Y","bom, no nosso caso, facilitou o envio dos projetos.","a internet é uma importante ferramenta, em relação ao referencial teórico, no desenvolvimento de projetos.");
INSERT INTO lime_survey_57346 VALUES("249","1980-01-01 00:00:00","pt","F","16","Abaetetuba","Pará","São Francisco Xavier","2","4","","0","0","0","1","0","0","0","0","-oth-","8","4","2","2","1","","","4","3","2","1","","","3","2","3","2","3","4","3","2","2","","","Y","","","","","","4","3","5","Y","é um site um grande fluxo de informações, o que é muito importante para o interesse dos alunos.","Y","é bastante interessante, pois há praticidade e agilidade para a inscrição de projetos.","");
INSERT INTO lime_survey_57346 VALUES("250","1980-01-01 00:00:00","pt","F","48","Abaetetuba","Pará","Pedro Texeira","2","2","","0","0","0","0","0","0","1","0","-oth-","18","4","4","","","","","4","","","","","","4","","","4","","4","","","","","","Y","","","","","","5","5","5","Y","muito bom","Y","bom acesso a todos","");
INSERT INTO lime_survey_57346 VALUES("251","1980-01-01 00:00:00","pt","F","17","Abaetetuba","Pará","Pedro Texeira","2","1","","0","0","1","0","0","0","0","0","-oth-","15","1","2","3","2","","","2","1","2","1","","","3","2","2","2","2","3","1","1","2","","","","","","","Y","","5","3","3","","","","","");
INSERT INTO lime_survey_57346 VALUES("252","1980-01-01 00:00:00","pt","F","17","Abaetetuba","Pará","Pedro Texeira","2","1","","0","0","1","0","0","0","0","0","-oth-","10","1","2","2","1","","","2","1","1","1","","","2","","","2","2","2","","2","","","","Y","","","","","","5","4","4","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("253","1980-01-01 00:00:00","pt","F","","Trairi","Ceará","E. E. M. Maria Celeste de Azevedo Porto","2","2","","0","0","0","0","0","0","1","0","-oth-","25","4","4","2","2","","","4","2","2","1","","","4","2","2","2","4","4","2","2","2","","","Y","","","","","","5","4","5","Y","acho muito criativo, interessante e fácil de encontramos o que precisamos.","Y","tive algumas dificuldades para submeter meu projeto porém acredito que os erros foram meus, os passos a seguir são bem claros.","que continuem mandando informações sobre futuros eventos.");
INSERT INTO lime_survey_57346 VALUES("254","1980-01-01 00:00:00","pt","F","16","Trairi","Ceará","E. E. M. Maria Celeste de Azevedo Porto","2","1","","0","0","0","1","0","0","0","0","-oth-","2","","2","","","","","2","","","","","","2","1","","","2","","","","","","","","","","","Y","","4","2","3","N","","N","","informações necessárias");
INSERT INTO lime_survey_57346 VALUES("255","1980-01-01 00:00:00","pt","M","17","Trairi","Ceará","E. E. M. Maria Celeste de Azevedo Porto","2","1","","0","0","0","1","0","0","0","0","-oth-","15","1","2","2","1","","","2","1","2","2","","","2","2","2","2","2","1","2","2","1","","","Y","","","","","","5","4","5","Y","sim, acessei algumas vezes. muito interessante.","N","","");
INSERT INTO lime_survey_57346 VALUES("256","1980-01-01 00:00:00","pt","F","27","Abaetetuba","Pará","São Francisco Xavier","2","2","","0","0","0","0","0","0","1","0","-oth-","10","4","4","","","","","4","4","","","","","4","","","3","4","","","","","","","Y","","","","","","4","4","4","Y","é bastante informativo, uma vez que divulga os trabalhos apresentados, despertando nos alunos um grande interesse em participar.","Y","é um sistema muito importante e bastante prático.","");
INSERT INTO lime_survey_57346 VALUES("257","1980-01-01 00:00:00","pt","F","17","Abaetetuba","Pará","São Francisco Xavier","2","1","","0","0","0","1","0","0","0","0","-oth-","10","2","1","2","1","","","2","1","1","1","","","2","2","1","2","2","","2","2","2","","","Y","","","","","hotmail, gmail","5","4","3","Y","muito interessante, uma vez que divulga trabalhos apresentados","Y","pois torna-se prático agilizando os projetos","");
INSERT INTO lime_survey_57346 VALUES("258","1980-01-01 00:00:00","pt","F","15","Abaetetuba","Pará","São Francisco Xavier","2","1","","0","0","0","1","0","1","0","0","-oth-","10","4","1","2","1","","","2","2","1","1","","","2","1","1","2","2","1","2","1","2","","","Y","","","","","","4","4","4","Y","o site é bastante informativo, com destaque para a divulgação de trabalhos já apresentados de forma a estimular a inicitaiva de outros projetos","Y","O sistema é prático e permite uma maior acessibilidade a estudantes interessados.","");
INSERT INTO lime_survey_57346 VALUES("259","1980-01-01 00:00:00","pt","M","17","Inhumas","Goiás","Instituto Federal Goiano","2","1","","0","0","0","0","0","1","0","0","-oth-","10","2","4","3","2","","","4","2","2","2","","","4","2","3","3","","4","2","2","2","","","Y","","","","","","5","5","3","N","","Y","bom site","");
INSERT INTO lime_survey_57346 VALUES("260","1980-01-01 00:00:00","pt","F","16","Santos","São Paulo","Universitas","1","1","","0","0","0","1","0","0","0","0","-oth-","6","4","2","1","1","","","4","2","2","1","","","4","1","1","1","4","4","4","1","2","","","Y","Y","","","","","4","4","4","Y","utilizei o mesmo para esclarecer algumas dúvidas e portanto o considero muito prático e útil","N","","");
INSERT INTO lime_survey_57346 VALUES("261","1980-01-01 00:00:00","pt","F","36","Santos","São Paulo","Universitas","1","2","","0","0","0","0","0","0","1","0","-oth-","20","4","3","2","2","","","4","4","1","1","","","4","1","2","3","3","2","2","1","2","","","Y","","","","","","5","4","4","Y","site didático com relação a metodologia científica","Y","conheço mas não utilizamos","");
INSERT INTO lime_survey_57346 VALUES("262","1980-01-01 00:00:00","pt","M","15","Camaragibe","Pernambuco","Anglo Líder","1","1","","0","0","0","1","0","0","0","0","-oth-","8","1","3","2","1","","","3","3","1","1","","","3","2","","2","2","3","3","1","2","","","Y","","","","","","5","1","4","Y","legal, contem informações ótimas sobre a feira","Y","ótimo, facilita muito","");
INSERT INTO lime_survey_57346 VALUES("263","1980-01-01 00:00:00","pt","M","17","Feliz","Rio Grande do Sul","Liberato","3","1","","0","0","0","0","0","1","0","0","-oth-","10","4","2","1","1","","","4","4","1","1","","","4","2","2","2","4","4","4","2","3","","","Y","","","","","","4","2","5","Y","é um site bem dinâmico e de fácil navegação.","Y","o sistema é ótimo para as pessoas que não são do estado.","");
INSERT INTO lime_survey_57346 VALUES("264","1980-01-01 00:00:00","pt","M","16","Fortaleza","Ceará","Christus","1","1","","0","0","0","1","0","0","0","0","-oth-","9","4","2","1","1","","","3","3","2","2","","","4","2","4","2","4","4","4","2","4","","","Y","Y","Y","Y","","","4","3","3","Y","bom, mas com poucas informações de projetos passados","Y","é completo e bem explicado","");
INSERT INTO lime_survey_57346 VALUES("265","1980-01-01 00:00:00","pt","M","15","Guarapari","Espírito Santo","Centro Educacional Guarapari","1","1","","0","0","0","1","0","0","0","0","-oth-","7","4","2","2","1","","","4","4","1","1","","","3","2","1","1","2","4","4","1","3","","","Y","","","","","","5","5","4","Y","é um site onde se pode encontrar as informações necessárias para participação da feira","Y","é muito válido, pois é mais prático e rápido","");
INSERT INTO lime_survey_57346 VALUES("266","1980-01-01 00:00:00","pt","M","32","Guarapari","Espírito Santo","Centro Educacional Guarapari","1","2","","0","0","0","0","0","0","1","0","-oth-","18","4","4","","","","","4","4","","","","","4","2","2","4","4","3","1","1","2","4","pesquisa","Y","","","","","","5","4","4","N","","N","","que seja divulgado nacionalmente");
INSERT INTO lime_survey_57346 VALUES("267","1980-01-01 00:00:00","pt","M","16","Guarapari","Espírito Santo","Centro Educacional Guarapari","1","1","","0","0","0","1","0","0","0","0","-oth-","5","4","2","2","2","","","4","2","1","1","","","2","1","1","1","2","4","1","2","3","","","Y","","","","","","4","4","3","Y","interessante, tem todas as informações que preciso, além de ser um ótimo passatempo por causa dos vídeos, etc...","Y","fácil e rápido","");
INSERT INTO lime_survey_57346 VALUES("268","1980-01-01 00:00:00","pt","M","16","Guarapari","Espírito Santo","Centro Educacional Guarapari","1","1","","0","0","0","1","0","0","0","0","-oth-","5","4","2","2","1","","","4","2","1","3","","","4","4","4","3","3","4","4","2","3","","","Y","Y","","","","","4","3","5","Y","é interessante e informativo","Y","fácil e rápido","");
INSERT INTO lime_survey_57346 VALUES("269","1980-01-01 00:00:00","pt","F","35","Guarapari","Espírito Santo","Centro Educacional Guarapari","1","2","","0","0","0","0","0","0","1","0","-oth-","15","4","","","","","","4","","4","","","","4","","","4","4","4","","","","","","Y","","","","","","4","3","4","Y","uma feira onde há exposição de vários projetos em todo Brasil","Y","","interessante a data de divulgação dos projetos finalistas saírem com maior antecedência para que os finalistas possam ter mais tempo para correr atrás de patrcínio/apoio.");
INSERT INTO lime_survey_57346 VALUES("270","1980-01-01 00:00:00","pt","F","20","Novo Hamburgo","Rio Grande do Sul","Liberato","3","1","","0","0","0","0","0","1","0","0","-oth-","12","3","2","1","1","","","4","2","4","1","","","4","1","1","2","4","2","3","1","2","","","Y","","","","","","5","5","3","Y","muito interessante","N","","");
INSERT INTO lime_survey_57346 VALUES("271","1980-01-01 00:00:00","pt","F","19","Sapucaia do Sul","Rio Grande do Sul","Liberato","3","1","","0","0","0","0","0","1","0","0","","","4","2","1","1","","","2","4","1","1","","","4","1","1","2","2","4","4","1","2","","","Y","","","","","","5","5","3","Y","interessante","N","","");
INSERT INTO lime_survey_57346 VALUES("272","1980-01-01 00:00:00","pt","M","19","Esteio","Rio Grande do Sul","Visconde de São Leopoldo","2","1","","0","0","1","0","1","0","0","0","-oth-","12","4","3","2","1","","","4","4","1","1","","","3","4","1","1","3","4","1","2","2","","","Y","","","","","","4","4","3","Y","é um bom site, bem explicado, fácil manuseio e de rápido acesso.","","","");
INSERT INTO lime_survey_57346 VALUES("273","1980-01-01 00:00:00","pt","M","18","Novo Hamburgo","Rio Grande do Sul","Visconde de São Leopoldo","1","1","","0","0","0","1","0","1","0","0","-oth-","15","1","3","2","2","","","3","2","1","1","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO lime_survey_57346 VALUES("274","1980-01-01 00:00:00","pt","M","20","Novo Hamburgo","Rio Grande do Sul","Visconde de São Leopoldo","2","1","","0","0","1","0","1","0","0","0","-oth-","12","4","2","3","1","","","3","4","1","1","","","3","1","1","1","1","3","1","1","1","","","Y","","","","","","4","4","4","Y","é um site bem elaborado e com bons conteúdos","N","","");
INSERT INTO lime_survey_57346 VALUES("275","1980-01-01 00:00:00","pt","M","54","São Leopoldo","Rio Grande do Sul","Visconde de São Leopoldo","2","2","","0","0","0","0","0","0","1","0","-oth-","38","4","4","2","2","","","4","4","2","1","","","4","1","2","2","4","1","1","1","2","","","","","","","Y","","4","4","4","Y","bom. bem abrangente no que diz respeito à feira.","Y","bom, funciona","");
INSERT INTO lime_survey_57346 VALUES("276","1980-01-01 00:00:00","pt","F","16","São Paulo","São Paulo","Giordano Bruno","","1","","0","0","0","1","0","0","0","0","-oth-","10","4","2","1","1","","","4","2","1","1","","","4","2","2","2","2","4","4","1","2","","","Y","","","","","","5","4","5","Y","muito interessante e importante para obter informações sobre a feira.","Y","claro e necessário para se ter um primeiro contato com a pesquisa","");
INSERT INTO lime_survey_57346 VALUES("277","1980-01-01 00:00:00","pt","F","16","São Paulo","São Paulo","Giordano Bruno","1","1","","0","0","0","1","0","0","0","0","-oth-","10","4","2","1","1","","","4","4","1","1","","","4","2","1","1","2","4","4","1","4","","","Y","","","","","","5","4","4","Y","é importante estar por dentro dos trabalhos a serem apresentados","Y","é muito relevante","");
INSERT INTO lime_survey_57346 VALUES("278","1980-01-01 00:00:00","pt","F","15","São Paulo","São Paulo","Giordano Bruno","1","1","","0","0","0","1","0","0","0","0","-oth-","10","4","2","1","1","","","4","4","1","1","","","4","2","1","1","2","4","1","1","4","","","","","","","","","5","4","4","Y","pois é, importante conhecer as diversidades de trabalhos e sua importância para a sociedade","Y","é muito relevante","");
INSERT INTO lime_survey_57346 VALUES("279","1980-01-01 00:00:00","pt","F","17","Cubatão","São Paulo","Universitas","1","1","","0","0","0","1","0","0","0","0","-oth-","6","4","2","1","2","","","3","4","2","1","","","4","1","1","1","2","2","1","1","2","","","Y","","","","","","4","3","3","Y","é um site bom, que disponibiliza muitas informações sobre a feira, poupando, assim o trabalho de entrar em contato com os organizadores da feira","N","","");
INSERT INTO lime_survey_57346 VALUES("280","1980-01-01 00:00:00","pt","F","16","Feliz","Rio Grande do Sul","Liberato","3","1","","0","0","0","1","0","1","0","0","-oth-","10","4","2","2","2","","","4","4","1","1","","","4","4","1","2","4","4","4","4","4","","","Y","","","","","","5","4","4","Y","muito bom, nos traz muitas informações","Y","muito interessante e organizado","");
INSERT INTO lime_survey_57346 VALUES("281","1980-01-01 00:00:00","pt","F","60","Novo Hamburgo","Rio Grande do Sul","Liberato","3","2","","0","0","0","0","0","0","1","0","-oth-","3","3","","","","","","3","","","","","","3","","","","3","","","","","","","","","","","Y","","5","4","2","Y","organizado e informativo","N","","");
INSERT INTO lime_survey_57346 VALUES("282","1980-01-01 00:00:00","pt","F","16","Novo Hamburgo","Rio Grande do Sul","Liberato","3","1","","0","0","0","1","0","1","0","0","-oth-","5","4","2","2","1","","","2","4","1","1","","","4","2","2","1","3","4","1","1","3","4","orkut","Y","Y","","","","","5","3","3","Y","muito bem organizado","Y","muito bom","a internet é um ótimo meio de comunicação");
INSERT INTO lime_survey_57346 VALUES("283","1980-01-01 00:00:00","pt","F","16","Novo Hamburgo","Rio Grande do Sul","Liberato","3","1","","0","0","1","0","1","0","0","0","-oth-","5","4","2","2","1","","","4","2","1","1","","","3","2","2","1","3","4","1","1","3","4","orkut","Y","","","","","","5","2","4","Y","muito bom e bem explicativo","Y","muito bom","a internet é um meio de comunicação");
INSERT INTO lime_survey_57346 VALUES("284","1980-01-01 00:00:00","pt","F","16","Estância Velha","Rio Grande do Sul","Liberato","3","1","","0","0","0","1","0","1","0","0","-oth-","6","4","2","2","1","","","4","1","1","1","","","3","1","1","1","3","3","3","1","2","","","Y","","","","","","5","2","3","Y","muito bem organizado","Y","muito bom","a internet é um ótimo meio de comunicação");
INSERT INTO lime_survey_57346 VALUES("285","1980-01-01 00:00:00","pt","M","17","Laranjal do Jari","Amapá","Mineko Hayashida","","1","","0","0","0","1","0","0","0","0","-oth-","10","4","3","","","","","4","","","","","","4","3","3","1","4","4","1","4","3","","","Y","","","","","","5","5","5","Y","o site da febrace é excelente, completo","N","","");
INSERT INTO lime_survey_57346 VALUES("286","1980-01-01 00:00:00","pt","F","17","Laranjal do Jari","Amapá","Mineko Hayashida","2","1","","0","0","0","1","0","0","0","0","","","4","4","","","","","4","","","","","","4","1","1","1","4","4","4","4","","","","Y","","","","","","5","5","5","Y","","Y","é completo e interessante, pois esclarece os procedimentos da feira","");
INSERT INTO lime_survey_57346 VALUES("287","1980-01-01 00:00:00","pt","M","62","Laranjal do Jari","Amapá","Mineko Hayashida","2","2","","0","0","0","0","1","0","0","0","-oth-","40","1","3","2","1","","","3","1","1","1","","","4","1","1","2","2","1","1","1","2","","","","","","","","","5","5","1","Y","site interessante, muito bom","Y","muito bom","");
INSERT INTO lime_survey_57346 VALUES("288","1980-01-01 00:00:00","pt","F","31","Laranjal do Jari","Amapá","Mineko Hayashida","2","2","","0","0","0","0","0","0","1","0","-oth-","17","","4","2","2","","","4","4","4","","","","4","","2","2","4","2","2","1","2","","","Y","","","","","","5","5","5","Y","excelente, rico em informações e interatividade","Y","interessante, fácil de manusear e facilita nossa vida","gostaria que os trabalhos (experiências) fossem mais divulgadas e que não fossem vistos individualmente, mas que tivessem relações com todos os demais trabalhos");
INSERT INTO lime_survey_57346 VALUES("289","1980-01-01 00:00:00","pt","M","","Laranjal do Jari","Amapá","Mineko Hayashida","2","1","","0","0","0","1","0","0","0","0","-oth-","5","1","3","4","1","","","3","1","1","1","","","1","3","3","1","2","3","3","2","2","3","pesquisa","Y","","","","","","4","4","5","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("290","1980-01-01 00:00:00","pt","M","19","Rio de Janeiro","Rio de Janeiro","CEFET","2","1","","0","0","1","0","0","1","0","0","-oth-","10","4","1","2","1","","","4","2","1","1","","","4","2","2","2","1","4","1","1","2","","","Y","","","","","","5","4","4","Y","bem estruturado","Y","fácil manuseio e entendimento","");
INSERT INTO lime_survey_57346 VALUES("291","1980-01-01 00:00:00","pt","F","18","Rio de Janeiro","Rio de Janeiro","CEFET","2","1","","0","0","1","0","0","1","0","0","-oth-","8","3","","","","4","Estágio","4","","2","","","","4","1","3","2","4","3","3","1","2","","","Y","","","","","","5","5","4","Y","é bom no quesito informação, mas deveria ter mais vídeos e/ou fotos de feiras anteriores.","N","","");
INSERT INTO lime_survey_57346 VALUES("292","1980-01-01 00:00:00","pt","F","18","Rio de Janeiro","Rio de Janeiro","CEFET","2","3","","0","0","1","0","0","1","0","0","-oth-","14","3","","","","","","4","","","","","","4","","","","","4","4","","2","","","Y","","","","","","5","4","4","Y","facilmente acessível e com informações claras e objetivas","N","","");
INSERT INTO lime_survey_57346 VALUES("293","1980-01-01 00:00:00","pt","M","","Rio de Janeiro","Rio de Janeiro","CEFET","2","2","","0","0","0","0","0","1","0","1","-oth-","14","4","2","1","1","","","4","1","4","2","","","4","4","1","1","1","4","1","1","2","","","Y","","","","","","5","5","5","Y","nada a declarar","Y","eficiente","");
INSERT INTO lime_survey_57346 VALUES("294","1980-01-01 00:00:00","pt","F","15","São Paulo","São Paulo","Giordano Bruno","1","1","","0","0","0","1","0","0","0","0","-oth-","7","4","2","1","1","","","4","2","1","1","","","4","2","2","2","3","4","3","1","4","","","","Y","","","","","4","2","2","Y","um pouco confuso quanto ao acesso da área","Y","precisa ser atualizado com mais frequência","");
INSERT INTO lime_survey_57346 VALUES("295","1980-01-01 00:00:00","pt","F","15","São Paulo","São Paulo","Giordano Bruno","1","1","","0","0","0","1","0","0","0","0","-oth-","7","4","2","1","1","","","4","1","1","1","","","4","2","1","2","2","4","","","2","","","","","","","Y","","3","4","3","Y","é bom","Y","é bom","");
INSERT INTO lime_survey_57346 VALUES("296","1980-01-01 00:00:00","pt","F","15","São Paulo","São Paulo","Giordano Bruno","1","1","","0","0","0","1","0","0","0","0","-oth-","7","4","2","1","1","","","4","1","1","1","","","3","2","1","1","1","4","3","1","2","","","Y","","","","","","3","3","3","Y","é um evento interessante","Y","é confuso","");
INSERT INTO lime_survey_57346 VALUES("297","1980-01-01 00:00:00","pt","F","15","Camaragibe","Pernambuco","Ministro Jarbas Passarinho","2","1","","0","0","0","1","0","0","0","0","-oth-","9","","","3","","","","3","","","","","","3","1","1","3","3","2","1","1","1","","","Y","","","","","","5","5","5","Y","é um site informativo, que tira nossas dúvidas quando é necessário","N","","");
INSERT INTO lime_survey_57346 VALUES("298","1980-01-01 00:00:00","pt","F","44","Camaragibe","Pernambuco","Ministro Jarbas Passarinho","2","2","","0","0","0","0","0","0","1","0","-oth-","37","1","3","1","2","","","3","3","1","1","","","3","1","2","2","2","1","1","1","2","","","","","","","Y","","5","5","5","Y","rico em informações e de excelência","Y","excelente","");
INSERT INTO lime_survey_57346 VALUES("299","1980-01-01 00:00:00","pt","F","16","","Rio Grande do Sul","Liberato","3","1","","0","0","0","1","0","1","0","0","-oth-","4","4","","2","1","","","4","3","1","1","","","3","2","4","3","2","4","4","2","3","","","Y","Y","","","","Hi5, Sonico","4","3","4","Y","informativo e organizado","Y","tamanho de relatório máximo é muito pequeno","mantenho blogs desde 2004. O atual é http://garotamulticolor.blogspot.com");
INSERT INTO lime_survey_57346 VALUES("300","1980-01-01 00:00:00","pt","M","18","Imperatriz","Maranhão","Complexo Educacional Dom Bosco","1","1","","0","0","1","0","0","0","0","0","-oth-","7","4","2","2","2","","","4","2","1","","","","4","1","3","3","4","3","4","1","2","","","Y","","","","","","5","4","5","Y","eu acho que ele devia ser mais claro, há seções que só consigo acessar utilizando o mapa do site.","Y","é prático, pois podemos submeter nosso projeto pela internet","");
INSERT INTO lime_survey_57346 VALUES("301","1980-01-01 00:00:00","pt","F","17","Imperatriz","Maranhão","Graça Aranha","2","1","","0","0","0","1","0","0","0","0","-oth-","15","","","3","","","","3","","","","","","3","","","","","3","3","","3","","","Y","","","","","","4","3","4","","","","","sim, a internet traz benefíciops na maioria das vezes para as pessoas, é um meio rápido de comunicação e informação e etc.");
INSERT INTO lime_survey_57346 VALUES("302","1980-01-01 00:00:00","pt","F","48","Imperatriz","Maranhão","Graça Aranha","2","2","","0","0","0","0","0","0","1","0","-oth-","44","4","2","2","2","2","hóteis","4","2","1","1","","","4","1","2","3","2","2","2","2","2","","","Y","","","","","","4","4","4","Y","fácil acesso, atrativo e bastante informações sistematizadas","","","cursos a distância / tutoria");
INSERT INTO lime_survey_57346 VALUES("303","1980-01-01 00:00:00","pt","F","17","Imperatriz","Maranhão","Graça Aranha","2","1","","0","0","0","1","0","0","0","0","-oth-","11","4","2","1","","2","casa de parentes","4","2","1","1","","","3","1","2","1","2","4","4","2","2","4","orkut","Y","","","","","","4","3","4","Y","é bem interessante. é bem explicativo, mas o link é bem complicado.","Y","bom, mas as vezes eu me enrolo um pouco.","");
INSERT INTO lime_survey_57346 VALUES("304","1980-01-01 00:00:00","pt","F","18","Imperatriz","Maranhão","Graça Aranha","2","1","","0","0","1","0","0","0","0","0","-oth-","12","3","1","2","1","","","3","1","1","1","","","3","1","1","1","2","3","3","1","3","","","Y","","","","","","5","4","4","Y","é um site bem organizado e de acesso fácil","Y","é prático e bem organizado.","");
INSERT INTO lime_survey_57346 VALUES("305","1980-01-01 00:00:00","pt","M","19","Rio de Janeiro","Rio de Janeiro","CEFET","2","1","","0","0","1","0","0","1","0","0","-oth-","10","4","2","2","1","4","Trabalho","4","2","1","1","","","4","1","2","2","3","2","3","2","2","","","Y","","Y","Y","","Paltalk","5","4","2","Y","é um site bem organizado e com um conteúdo interssante a ser acessado","N","","a internet é um meio infinito de informações e deve começar a ser utilizada para o desenvolvimento da educação mundial.");
INSERT INTO lime_survey_57346 VALUES("306","1980-01-01 00:00:00","pt","M","18","Palmas","Tocantins","Escola Técnica Federal de Palmas","2","1","","0","0","0","1","0","1","0","0","-oth-","12","4","2","1","2","","","4","2","1","1","","","3","2","1","1","2","4","2","2","3","","","Y","Y","","","","Sonico","5","5","1","Y","mais ou menos, poderia ser mais dinâmico.","N","","");
INSERT INTO lime_survey_57346 VALUES("307","1980-01-01 00:00:00","pt","F","19","Imperatriz","Maranhão","Universidade Federal do Maranhão","2","2","","0","0","0","0","0","0","0","1","-oth-","12","4","4","1","2","","","3","4","2","1","","","4","1","1","2","4","3","3","2","2","","","Y","","","","","","5","4","4","Y","é um site bem elaborado e suas informações são claras e objetivas","N","","me interesso pelas novidades e avanços da engenharia e tecnologia de alimentos.");
INSERT INTO lime_survey_57346 VALUES("308","1980-01-01 00:00:00","pt","F","14","Imperatriz","Maranhão","Rui Barbosa","1","1","","0","0","0","1","0","0","0","0","-oth-","8","3","2","2","2","","","3","3","1","1","","","4","1","1","2","2","3","1","1","3","","","","","","","Y","","4","4","4","Y","gosto muito, pois é um site que traz todas as informações necessárias sobre a feira.","N","","");
INSERT INTO lime_survey_57346 VALUES("309","1980-01-01 00:00:00","pt","M","31","Imperatriz","Maranhão","Rui Barbosa","1","2","","0","0","0","0","0","0","1","0","-oth-","18","4","4","2","","","","4","2","4","","","","3","1","1","2","4","2","2","2","2","","","Y","","","","","","5","4","3","Y","muito informativo e preciso.","Y","quando isso ocorre facilita a vida de todos","");
INSERT INTO lime_survey_57346 VALUES("310","1980-01-01 00:00:00","pt","F","18","São Paulo","São Paulo","I. L. Peretz","1","1","","0","0","0","1","0","0","0","0","-oth-","10","4","2","1","1","","","2","4","1","1","","","4","1","1","1","4","3","1","1","3","","","","","","","","","5","5","5","Y","é ótimo","Y","muito bom","");
INSERT INTO lime_survey_57346 VALUES("311","1980-01-01 00:00:00","pt","M","16","São Paulo","São Paulo","I. L. Peretz","1","1","","0","0","0","1","0","0","0","0","-oth-","5","4","4","1","1","","","4","2","4","1","","","4","4","2","1","4","4","4","1","4","","","Y","","Y","","","","3","2","3","Y","acho ele adequado","Y","muito bom","");
INSERT INTO lime_survey_57346 VALUES("312","1980-01-01 00:00:00","pt","F","17","Limeira","São Paulo","ETEC Trajano Camargo","2","1","","0","0","0","1","0","1","0","0","-oth-","14","3","2","2","2","","","3","1","1","1","","","3","1","1","1","2","3","3","2","2","","","Y","","","","","","5","4","4","Y","um site bom, mas que saía do ar algumas vezes acessado.","N","","");
INSERT INTO lime_survey_57346 VALUES("313","1980-01-01 00:00:00","pt","F","17","Limeira","São Paulo","ETEC Trajano Camargo","2","1","","0","0","0","1","0","1","0","0","-oth-","9","4","2","1","1","","","4","2","2","1","","","3","2","2","1","3","4","4","2","3","","","Y","","","","","","4","3","4","Y","o site é bom mas sai bastante do ar","N","","");
INSERT INTO lime_survey_57346 VALUES("314","1980-01-01 00:00:00","pt","M","18","Limeira","São Paulo","ETEC Trajano Camargo","2","1","","0","0","0","1","0","1","0","0","-oth-","3","4","3","2","2","","","4","1","1","1","","","4","2","3","3","4","4","4","1","2","","","Y","","","","","","3","4","4","Y","o site poderia ter acessos mais fáceis e ficar no ar todos os dias e horários","Y","é bom, acredito que seja melhor que o envio postal","");
INSERT INTO lime_survey_57346 VALUES("315","1980-01-01 00:00:00","pt","F","17","Limeira","São Paulo","ETEC Trajano Camargo","2","1","","0","0","0","1","0","1","0","0","-oth-","14","3","3","1","2","","","3","","","","","","3","2","2","1","3","1","1","1","2","","","","","","","Y","","4","4","4","Y","é um ótimo instrumento de apoio àqueles que buscam por inovação e oportunidades.","N","","");
INSERT INTO lime_survey_57346 VALUES("316","1980-01-01 00:00:00","pt","F","17","São Paulo","São Paulo","I. L. Peretz","1","1","","0","0","0","1","0","0","0","0","-oth-","10","4","2","2","","","","2","4","2","2","","","4","1","1","1","1","4","4","1","2","","","Y","","","","","","5","3","1","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("317","1980-01-01 00:00:00","pt","M","17","Guarulhos","São Paulo","Liceu de Artes e Ofício","1","1","","0","0","0","0","0","1","0","1","-oth-","9","3","3","2","1","","","3","1","1","1","","","3","2","2","2","3","3","3","2","3","","","Y","","","","","","4","3","4","Y","considero o site bom e atual","N","","");
INSERT INTO lime_survey_57346 VALUES("318","1980-01-01 00:00:00","pt","M","18","São Paulo","São Paulo","Liceu de Artes e Ofício","1","1","","0","0","1","0","0","1","0","0","-oth-","10","4","2","2","2","","","4","2","2","1","","","4","2","2","3","3","4","3","2","2","","","Y","","","","","","4","3","3","Y","muito bem informado, de fácil acesso e bem organizado.","Y","fácil uso, muito prático","");
INSERT INTO lime_survey_57346 VALUES("319","1980-01-01 00:00:00","pt","M","17","Guarulhos","São Paulo","Liceu de Artes e Ofício","1","1","","0","0","1","0","1","0","0","0","-oth-","6","4","4","2","2","","","4","2","1","2","","","4","4","3","4","4","4","3","4","4","","","Y","","","","","","5","3","4","Y","o site da febrace é organizada, mas é atualizado com pouca frequência.","Y","eficiente, apesar de ter saído do ar nos últimos dias de submissão.","");
INSERT INTO lime_survey_57346 VALUES("320","1980-01-01 00:00:00","pt","M","15","São Paulo","São Paulo","Objetivo","1","1","","0","0","0","1","0","0","0","0","-oth-","5","4","2","1","2","","","2","4","3","2","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO lime_survey_57346 VALUES("321","1980-01-01 00:00:00","pt","M","17","Limeira","São Paulo","ETEC Trajano Camargo","2","1","","0","0","0","1","0","1","0","0","-oth-","11","3","2","2","1","","","3","1","1","1","","","3","2","1","3","2","2","2","1","2","","","Y","","","","","","4","4","4","Y","um bom site, só que com poucos acessórios","Y","bom, só que apresenta algumas dúvidas","");
INSERT INTO lime_survey_57346 VALUES("322","1980-01-01 00:00:00","pt","F","17","Limeira","São Paulo","ETEC Trajano Camargo","2","1","","0","0","0","1","0","0","0","0","-oth-","14","2","2","2","1","","","2","","","","","","2","2","1","1","2","2","1","1","2","","","","","","","Y","","5","4","4","Y","interessante, existem vários projetos no qual eu adoraria conhecer","Y","é um sistema bom, mas um tanto confuso","");
INSERT INTO lime_survey_57346 VALUES("323","1980-01-01 00:00:00","pt","F","16","Artur Nogueira","São Paulo","ETEC Trajano Camargo","2","1","","0","0","0","1","0","1","0","0","-oth-","12","3","2","1","1","","","3","1","1","1","","","3","2","1","2","3","3","3","1","2","","","Y","","","","","","5","4","4","Y","o site é muito interessante e informativo para internautas que querem acessar","Y","é bom, porém ficou um pouco que confuso, não foi tão explícito, para a submissão.","");
INSERT INTO lime_survey_57346 VALUES("324","1980-01-01 00:00:00","pt","F","17","São Paulo","São Paulo","I. L. Peretz","1","1","","0","0","0","1","0","0","0","0","-oth-","7","4","2","1","1","","","4","4","4","1","","","4","3","1","1","4","4","4","1","3","","","Y","","Y","","","","5","2","5","Y","neutra","Y","muito útil","");
INSERT INTO lime_survey_57346 VALUES("325","1980-01-01 00:00:00","pt","F","","São Paulo","São Paulo","ETEC Getúlio Vargas","2","2","","0","0","0","0","0","0","1","0","-oth-","20","4","3","1","1","","","4","3","4","2","","","4","2","2","2","4","3","2","1","2","","","Y","","","","","","4","4","4","Y","informativo e bem esclarecedor","N","","");
INSERT INTO lime_survey_57346 VALUES("326","1980-01-01 00:00:00","pt","F","18","São Paulo","São Paulo","ETEC Getúlio Vargas","2","1","","0","0","0","0","0","0","0","1","-oth-","8","4","1","1","2","","","3","3","1","1","","","4","1","1","1","1","4","4","1","2","","","Y","","","","","","5","2","3","Y","é um site conciso, que contém as informações necessárias","Y","bom para fazer o upload, visto que não travou e foi rápido","");
INSERT INTO lime_survey_57346 VALUES("327","1980-01-01 00:00:00","pt","F","17","Iracemápolis","São Paulo","ETEC Trajano Camargo","2","1","","0","0","0","0","1","0","0","0","-oth-","13","4","3","1","2","","","4","1","1","1","","","4","1","1","1","4","3","3","1","2","3","google","Y","","","","","","4","5","4","Y","é muito importante, porém encontei algumas dificuldades para encontrar algumas informações","Y","facilita quanto a \"não necessidade\" de ir aos correios, porém passei por algumas dificuldades e, quando tentava confirmae meus dados, sempre dava errado.","");
INSERT INTO lime_survey_57346 VALUES("328","1980-01-01 00:00:00","pt","F","17","Limeira","São Paulo","ETEC Trajano Camargo","2","1","","0","0","0","0","1","0","0","0","-oth-","11","4","3","2","1","","","4","1","1","1","","","4","2","2","1","3","4","2","1","3","3","google","","","","","Y","","4","4","4","Y","muito bom, pois as informações estão sempre atualizadas","Y","no nosso caso tivemos problemas para submeter nosso projeto, por isso acho que precisa de melhoras","");
INSERT INTO lime_survey_57346 VALUES("329","1980-01-01 00:00:00","pt","M","16","Limeira","São Paulo","ETEC Trajano Camargo","2","1","","0","0","0","1","0","1","0","0","-oth-","12","3","3","2","1","","","3","1","","3","","","4","3","1","2","2","4","4","2","3","","","Y","","","","","","4","5","3","Y","o site da febrace está editado de maneira a facilitar as pesquisas aos usários","Y","prático, fácil","");
INSERT INTO lime_survey_57346 VALUES("330","1980-01-01 00:00:00","pt","M","31","Fortaleza","Ceará","Christus","1","2","","0","0","0","0","0","0","1","0","-oth-","12","4","4","1","2","","","4","4","1","1","","","4","2","2","1","4","3","3","1","2","","","Y","","","","","","5","5","3","Y","muito bom","Y","muito bom","");
INSERT INTO lime_survey_57346 VALUES("331","1980-01-01 00:00:00","pt","M","17","Fortaleza","Ceará","Christus","1","1","","0","0","0","1","0","0","0","0","-oth-","11","3","1","2","1","","","3","1","1","1","","","3","2","3","3","2","2","2","1","3","","","Y","","","","","","5","3","4","Y","prático","Y","conheço, mas acho o envio por correio mais confiável","");
INSERT INTO lime_survey_57346 VALUES("332","1980-01-01 00:00:00","pt","F","18","Camaragibe","Pernambuco","Ministro Jarbas Passarinho","2","1","","0","0","1","0","0","0","0","0","-oth-","10","","","3","","","","","2","4","1","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO lime_survey_57346 VALUES("333","1980-01-01 00:00:00","pt","F","17","Camaragibe","Pernambuco","Ministro Jarbas Passarinho","2","1","","0","0","1","0","0","0","0","0","-oth-","11","","","2","","","","2","2","","2","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO lime_survey_57346 VALUES("334","1980-01-01 00:00:00","pt","M","18","São Caetano do Sul","São Paulo","ETEC Jorge Street","2","1","","0","0","0","0","0","0","0","1","-oth-","9","4","2","2","2","4","Trabalho","3","4","1","1","","","4","2","1","2","3","4","4","1","3","","","Y","Y","","","","","4","4","3","Y","ótimo site com bastante informação, apenas faltou um pouco de didática.","Y","muito bom o sistema, facilita muito a submissão dos projetos","");
INSERT INTO lime_survey_57346 VALUES("335","1980-01-01 00:00:00","pt","M","18","São Bernardo do Campo","São Paulo","ETEC Jorge Street","2","1","","0","0","1","0","1","0","0","0","-oth-","12","4","2","","2","","","4","2","4","2","","","4","2","2","2","4","4","4","1","4","","","Y","Y","","","","","4","4","3","Y","é um bom site, porém deixa a desejar quando se trata da facilidade de uso, com \"links de atalho\", por exemplo","Y","uma ótima idéia, pois através deste, o processo se torna mais ágil e mais fácil.","");
INSERT INTO lime_survey_57346 VALUES("336","1980-01-01 00:00:00","pt","M","17","Santos","São Paulo","Sesi","1","1","","0","0","0","1","0","0","0","0","-oth-","11","4","2","","","","","4","4","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO lime_survey_57346 VALUES("337","1980-01-01 00:00:00","pt","F","16","Fortaleza","Ceará","Christus","1","1","","0","0","0","1","0","0","0","0","-oth-","7","4","1","2","1","","","4","4","1","1","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO lime_survey_57346 VALUES("338","1980-01-01 00:00:00","pt","F","16","Jacareí","São Paulo","ETEC Cônego José Bento","2","1","","0","0","0","1","0","0","0","0","-oth-","10","3","2","1","1","","","3","1","1","1","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO lime_survey_57346 VALUES("339","1980-01-01 00:00:00","pt","M","17","Maracanaú","Ceará","Liceu Estadual de Maracanaú","","","","0","0","0","1","0","0","0","0","","","","","3","","","","","3","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO lime_survey_57346 VALUES("340","1980-01-01 00:00:00","pt","F","15","Jacareí","São Paulo","ETEC Cônego José Bento","2","1","","0","0","0","1","0","1","0","0","-oth-","12","3","2","1","1","","","3","2","1","1","","","3","2","1","2","2","3","1","2","3","","","Y","Y","","","","","3","4","3","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("341","1980-01-01 00:00:00","pt","F","15","Jacareí","São Paulo","ETEC Cônego José Bento","2","4","","0","0","0","1","0","0","0","0","-oth-","7","4","1","1","2","2","casa de amigo","4","2","3","2","","","4","3","1","1","2","4","1","1","3","","","Y","","","","","","4","3","4","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("342","1980-01-01 00:00:00","pt","F","42","Santos","São Paulo","Sesi","1","3","","0","0","0","0","0","0","1","0","-oth-","22","4","2","","","","","2","4","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO lime_survey_57346 VALUES("351","1980-01-01 00:00:00","pt","M","19","Sapucaia do Sul","Rio Grande do Sul","","3","1","","0","0","1","0","0","1","0","0","-oth-","10","","4","3","","","","4","","","","","","4","1","1","2","4","4","4","2","2","","","Y","","","","","","5","3","4","Y","Bastante prático","Y","Muito eficiente","");
INSERT INTO lime_survey_57346 VALUES("344","1980-01-01 00:00:00","pt","F","48","Rio de Janeiro","Rio de Janeiro","CEFET","2","2","","0","0","0","0","0","0","1","0","-oth-","17","4","4","1","2","","","4","2","1","1","","","4","2","1","2","3","1","1","1","1","","","","","","","Y","","4","4","3","Y","bastante interessante. fácil de buscar informação.","Y","facilita a inscrição","");
INSERT INTO lime_survey_57346 VALUES("345","1980-01-01 00:00:00","pt","M","16","Rio de Janeiro","Rio de Janeiro","CEFET","2","3","","0","0","0","1","0","1","0","0","-oth-","5","4","2","2","2","","","4","4","2","1","","","4","2","2","2","4","4","4","1","3","","","Y","","","","","","4","4","3","Y","bom site","N","","");
INSERT INTO lime_survey_57346 VALUES("346","1980-01-01 00:00:00","pt","F","18","Rio de Janeiro","Rio de Janeiro","CEFET","2","1","","0","0","0","0","0","1","0","1","-oth-","10","4","2","2","2","","","4","4","1","1","","","4","2","2","2","3","4","4","2","2","","","Y","","","","","","4","3","4","Y","bem organizado e estruturado","N","","");
INSERT INTO lime_survey_57346 VALUES("347","1980-01-01 00:00:00","pt","F","19","Rio de Janeiro","Rio de Janeiro","CEFET","2","1","","0","0","0","0","0","1","0","0","-oth-","10","4","2","1","1","","","4","1","1","1","","","4","2","1","1","4","4","1","1","4","","","Y","","","","","","5","3","3","Y","bem organizado","N","","");
INSERT INTO lime_survey_57346 VALUES("348","1980-01-01 00:00:00","pt","F","18","Rio de Janeiro","Rio de Janeiro","CEFET","2","1","","0","0","1","0","0","1","0","0","-oth-","11","4","2","2","2","","","4","2","1","1","","","4","2","2","2","3","4","2","2","2","","","Y","","","","","","4","3","3","Y","bastante interessante","N","","");
INSERT INTO lime_survey_57346 VALUES("349","1980-01-01 00:00:00","pt","M","","São Paulo","São Paulo","CEFET","2","1","","0","0","1","0","0","0","0","0","-oth-","11","1","3","3","3","","","4","1","1","1","","","4","1","2","3","3","4","4","4","4","","","Y","","","Y","","Google Groups","5","5","5","Y","muito claro e informativo","Y","Ruim. Quase fui desclassificado por causa dele, pois ele não aceitou meu arquivo mesmo estando no formati exigido.","");
INSERT INTO lime_survey_57346 VALUES("350","1980-01-01 00:00:00","pt","F","15","Esteio","Rio Grande do Sul","Coração de Maria","1","1","","0","0","0","1","0","0","0","0","-oth-","3","4","4","","2","","","4","1","1","3","","","4","4","","","4","4","4","","3","","","Y","","","","","","5","","4","Y","bem organizado, prático e claro","Y","ótimo, assim submeti meu projeto","");
INSERT INTO lime_survey_57346 VALUES("352","1980-01-01 00:00:00","pt","F","14","Guararema","São Paulo","ETEC Cônego José Bento","2","4","","0","0","0","1","0","0","0","0","-oth-","6","2","1","2","2","2","casa de amigo","2","1","1","1","","","2","1","1","1","3","1","1","1","3","3","sites de pesquisa","","","","","Y","","3","3","4","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("353","1980-01-01 00:00:00","pt","F","15","Jacareí","São Paulo","ETEC Cônego José Bento","2","1","","0","0","0","1","0","0","0","0","-oth-","12","1","2","2","2","","","2","1","2","2","","","2","1","1","1","2","2","2","2","2","","","Y","","","","","","5","3","3","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("354","1980-01-01 00:00:00","pt","F","16","Fortaleza","Ceará","Christus","1","1","","0","0","0","1","0","0","0","0","-oth-","7","3","3","2","2","","","3","3","3","1","","","3","1","1","3","4","3","2","1","2","","","Y","","","","","","5","4","3","Y","muito fácil de se utilizar","N","","");
INSERT INTO lime_survey_57346 VALUES("355","1980-01-01 00:00:00","pt","M","58","Viamão","Rio Grande do Sul","Escola Estadual Técnica de Agricultura","2","2","","0","0","0","0","0","0","1","0","-oth-","50","2","","","","","","2","2","","","","","3","2","","","","","","","","","","Y","","","","","","5","4","5","Y","é muito importante pata se conhecer e aprender novas tecnologias","Y","ótimo","");
INSERT INTO lime_survey_57346 VALUES("363","1980-01-01 00:00:00","pt","F","17","São Paulo","São Paulo","ETEC Martin Luther King","","1","","0","0","0","0","0","0","0","1","-oth-","12","4","3","1","2","","","4","1","1","1","","","4","1","3","2","4","3","3","1","2","2","","Y","","","","","","4","4","3","Y","é um ótimo site para jovens cientistas","N","","");
INSERT INTO lime_survey_57346 VALUES("357","1980-01-01 00:00:00","pt","M","16","Viamão","Rio Grande do Sul","Escola Estadual Técnica de Agricultura","2","1","","0","0","0","1","0","1","0","0","-oth-","13","","","2","","","","2","","","","","","","","","","","","2","","","","","Y","","","","","","4","4","4","Y","fala bastante sobre a feira","Y","Um pouco complicado","");
INSERT INTO lime_survey_57346 VALUES("358","1980-01-01 00:00:00","pt","M","15","Viamão","Rio Grande do Sul","Escola Estadual Técnica de Agricultura","2","1","","0","0","0","1","0","1","0","0","-oth-","12","3","1","2","2","","","3","2","1","1","","","3","1","2","2","","3","1","3","3","","","Y","","","","","","4","4","4","Y","bem informativo","Y","ótimo","");
INSERT INTO lime_survey_57346 VALUES("359","1980-01-01 00:00:00","pt","M","16","Brochier","Rio Grande do Sul","Escola Estadual Técnica de Agricultura","2","1","","0","0","0","1","0","1","0","0","-oth-","8","3","2","2","2","","","3","2","2","2","","","3","3","3","2","2","3","3","2","2","","","Y","","","","","","5","2","3","Y","bom site, bem elaborado, possui diversos recursos, gostei, pois encontrei tudo o que necessitei nele.","Y","ótimo","");
INSERT INTO lime_survey_57346 VALUES("360","1980-01-01 00:00:00","pt","F","39","Imperatriz","Maranhão","Centro de Ensino Edison Lobão","2","2","","0","0","0","0","0","0","1","0","-oth-","30","2","","","","","","2","1","2","1","","","2","1","1","1","1","1","1","1","1","","","","","","","Y","","4","4","4","Y","","N","","");
INSERT INTO lime_survey_57346 VALUES("361","1980-01-01 00:00:00","pt","F","17","Imperatriz","Maranhão","Centro de Ensino Edison Lobão","2","1","","0","0","1","0","0","0","0","0","-oth-","14","4","1","1","1","","","4","1","1","1","","","4","1","1","1","2","2","1","1","2","","","Y","","","","","","5","4","4","Y","bem interessante, os jovens alunos podem se manter informado e conectado com a Feira","N","","");
INSERT INTO lime_survey_57346 VALUES("362","1980-01-01 00:00:00","pt","M","17","Imperatriz","Maranhão","Centro de Ensino Edison Lobão","2","1","","0","0","1","0","0","0","0","0","-oth-","15","1","2","4","1","","","4","1","2","1","","","4","1","1","1","2","4","1","2","4","","","Y","","","","","","5","4","4","Y","bastante interessante, pois explica tudo sobre a feira e esclarece dúvidas.","N","","");
INSERT INTO lime_survey_57346 VALUES("364","1980-01-01 00:00:00","pt","M","35","Jacareí","São Paulo","Univap","1","2","","0","0","0","0","0","0","1","0","-oth-","20","4","3","1","1","","","4","3","1","1","","","4","2","1","2","4","1","1","1","3","","","Y","","","","","","5","5","4","Y","o site é muito bom, com ótimas informações mas as informações poderiam estar com acesso mais fácil","Y","ótimo e bem organizado","");
INSERT INTO lime_survey_57346 VALUES("365","1980-01-01 00:00:00","pt","F","17","Jacareí","São Paulo","Univap","1","1","","0","0","0","0","1","0","0","0","-oth-","7","4","2","1","1","","","4","1","1","1","","","4","2","1","2","4","3","2","1","2","","","Y","","","","","","5","4","4","Y","o site é muito bom e há muitas informações, porém acho que podetia ser um pouco mais fácil de encontrar o que se procura no site","Y","ele é muito fácil de ser usado e muito organizado.","");
INSERT INTO lime_survey_57346 VALUES("366","1980-01-01 00:00:00","pt","M","18","Jacareí","São Paulo","Univap","1","1","","0","0","0","0","0","0","0","1","-oth-","10","4","3","1","3","","","4","4","2","1","","","4","2","2","3","4","4","4","2","3","","","Y","","","","","","5","4","3","Y","complexo, informações má organizadas, interface gráfica muito básica","Y","útil","");
INSERT INTO lime_survey_57346 VALUES("367","1980-01-01 00:00:00","pt","F","14","Fortaleza","Ceará","Christus","1","1","","0","0","0","1","0","0","0","0","-oth-","8","3","2","2","2","","","3","2","1","1","","","3","1","1","1","3","3","3","3","2","","","Y","","","","","","5","4","4","Y","bem objetivo","Y","prático e rápido","");
INSERT INTO lime_survey_57346 VALUES("368","1980-01-01 00:00:00","pt","F","15","Fortaleza","Ceará","Christus","1","1","","0","0","0","1","0","0","0","0","-oth-","8","3","2","2","2","","","3","2","1","1","","","3","1","1","1","2","3","1","1","1","","","","","","","Y","","5","4","4","Y","site completo e muito interativo","Y","é uma maneira mais rápida e prática para a submissõa de projetos","");
INSERT INTO lime_survey_57346 VALUES("369","1980-01-01 00:00:00","pt","F","","São Paulo","São Paulo","ETEC Martin Luther King","2","2","","0","0","0","0","0","0","1","0","-oth-","30","3","2","1","2","","","3","1","1","1","","","4","1","1","3","4","1","1","1","1","","","","","","","Y","","4","5","4","Y","boa","Y","boa","");
INSERT INTO lime_survey_57346 VALUES("370","1980-01-01 00:00:00","pt","F","18","São Paulo","São Paulo","ETEC Martin Luther King","2","1","","0","0","0","0","0","0","0","1","-oth-","12","4","3","1","2","","","4","1","1","1","","","4","1","3","2","4","3","3","1","2","","","Y","","","","","","4","4","3","Y","o site deveria ser claro","N","","");
INSERT INTO lime_survey_57346 VALUES("371","1980-01-01 00:00:00","pt","F","18","Guarulhos","São Paulo","ETEC Martin Luther King","2","1","","0","0","0","0","0","0","0","1","-oth-","11","4","3","1","2","","","4","3","2","1","","","4","2","2","1","3","4","4","1","3","","","Y","","","","","","5","4","3","Y","o site da febrace foi útil para obter informações sobre a programação da feira. considero-o bom.","N","","");
INSERT INTO lime_survey_57346 VALUES("372","1980-01-01 00:00:00","pt","M","18","Araruna","Paraná","Princesa Isabel","2","1","","0","0","1","0","0","0","0","0","1","","1","2","1","1","","","2","1","1","1","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO lime_survey_57346 VALUES("373","1980-01-01 00:00:00","pt","M","28","Araruna","Paraná","Princesa Isabel","2","2","","0","0","0","0","0","0","1","0","-oth-","12","4","3","","","","","4","","4","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO lime_survey_57346 VALUES("374","1980-01-01 00:00:00","pt","M","54","Campina Grande","Paraíba","Motiva","1","3","","0","0","0","0","0","0","1","0","-oth-","25","4","","","","","","4","","","","","","4","","","","","","","","","","","","","","","","e-mail","5","4","4","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("375","1980-01-01 00:00:00","pt","M","28","Campina Grande","Paraíba","Motiva","1","2","","0","0","0","0","0","0","1","0","-oth-","12","4","3","2","2","","","4","3","1","1","","","4","1","2","2","3","2","2","1","3","","","Y","","","","","","5","4","4","Y","muito bom","Y","claro e objetivo","");
INSERT INTO lime_survey_57346 VALUES("376","1980-01-01 00:00:00","pt","M","17","Campina Grande","Paraíba","Motiva","1","1","","0","0","0","1","0","0","0","0","-oth-","9","3","2","1","1","","","3","2","1","1","","","3","2","3","3","3","3","3","2","3","2","sites de venda","Y","","","","","","4","3","4","Y","bom, porém os links poderiam ser mais viśiveis","Y","fácil e rápido","");
INSERT INTO lime_survey_57346 VALUES("377","1980-01-01 00:00:00","pt","M","16","Maracanaú","Ceará","Liceu Estadual de Maracanaú","2","1","","0","0","0","1","0","0","0","0","-oth-","10","1","3","3","2","","","3","2","1","1","","","3","1","1","2","2","3","3","1","2","","","Y","","","","","Skype","5","2","5","Y","o site é informativo e ao mesmo tempo interaje com os estudantes de todo o Brasil","Y","É eficaz e acelera o processo de submissão","");
INSERT INTO lime_survey_57346 VALUES("378","1980-01-01 00:00:00","pt","M","16","Pato Branco","Paraná","Mater Dei","1","1","","0","0","0","1","0","0","0","0","-oth-","6","4","2","1","2","","","4","2","2","1","","","4","3","2","3","4","3","4","1","3","","","Y","","","","","","5","5","3","Y","é um site em que as informações apresentam-se de maneira organizada e de fácil entendimento","Y","apresenta facilidade e praticidade no envio de projetos online","");
INSERT INTO lime_survey_57346 VALUES("379","1980-01-01 00:00:00","pt","M","16","Pato Branco","Paraná","Mater Dei","1","1","","0","0","0","1","0","0","0","0","-oth-","7","4","2","2","2","","","4","2","1","1","","","3","2","2","2","2","2","3","1","2","","","Y","","","","","","4","4","3","Y","falta de uma barra de opção que possua as diversas opções do site","Y","é rápido e de fácil entendimento","");
INSERT INTO lime_survey_57346 VALUES("380","1980-01-01 00:00:00","pt","F","35","Santa Rosa de Goiás","Goiás","Santa Rosa","2","3","","0","0","0","0","0","0","1","0","-oth-","31","3","1","1","1","","","3","1","1","1","","","3","1","1","2","3","3","1","1","1","","","","","","","Y","","5","4","4","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("381","1980-01-01 00:00:00","pt","M","14","Santa Rosa de Goiás","Goiás","Santa Rosa","2","1","","0","0","0","1","0","0","0","0","1","","1","1","1","1","","","1","1","1","1","","","","","","","","","","","","","","","","","","","","4","2","4","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("382","1980-01-01 00:00:00","pt","M","19","Esteio","Rio Grande do Sul","Liberato","3","1","","0","0","0","0","0","1","0","1","-oth-","14","3","4","2","2","","","4","2","1","1","","","4","1","1","2","3","3","3","1","3","","","Y","","","","","","4","4","2","Y","claro e objetivo","Y","eficiente","");
INSERT INTO lime_survey_57346 VALUES("383","1980-01-01 00:00:00","pt","F","44","Santa Rosa de Goiás","Goiás","Santa Rosa","2","","","0","0","0","0","0","0","1","0","-oth-","30","4","1","1","4","","","4","2","","","","","4","2","2","2","4","4","2","2","2","4","skype","Y","","","","","","5","4","","Y","claro e objetivo","N","","");
INSERT INTO lime_survey_57346 VALUES("384","1980-01-01 00:00:00","pt","M","14","Santa Rosa de Goiás","Goiás","Santa Rosa","2","","","0","0","0","1","0","0","0","0","-oth-","10","1","1","2","1","","","2","1","1","1","","","2","1","1","1","2","2","1","1","1","","","","","","","Y","","","4","4","Y","para quem mora fora de São Paulo é umaforma de se manter informado sobre o evento","Y","fala de uma forma direta e clara","");
INSERT INTO lime_survey_57346 VALUES("385","1980-01-01 00:00:00","pt","M","19","Macaúbas","Bahia","Profº José Batista da Mota","2","1","","0","0","1","0","0","0","0","0","-oth-","13","1","2","3","1","","","3","1","1","1","","","3","2","2","2","3","3","3","1","2","","","Y","","","","","","4","4","4","","","","","");
INSERT INTO lime_survey_57346 VALUES("386","1980-01-01 00:00:00","pt","M","18","Macaúbas","Bahia","Profº José Batista da Mota","2","3","","0","0","1","0","0","0","0","0","-oth-","11","1","2","3","2","","","3","1","1","2","","","3","2","2","3","3","3","3","2","2","","","Y","","","","","","5","4","4","Y","possui bastante informações e onteúdos atrativos","N","","");
INSERT INTO lime_survey_57346 VALUES("389","1980-01-01 00:00:00","pt","F","44","Macaúbas","Bahia","Profº José Batista da Mota","2","3","","0","0","0","0","0","0","1","0","-oth-","40","1","4","2","2","","","4","1","1","1","","","4","1","2","2","4","2","1","1","2","","","","","","","Y","","5","5","5","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("390","1980-01-01 00:00:00","pt","F","28","Macaúbas","Bahia","Profº José Batista da Mota","2","2","","0","0","0","0","0","0","1","0","-oth-","17","3","4","1","1","","","4","1","1","1","","","3","1","3","3","4","4","1","1","1","","","","","","","Y","","5","4","4","Y","excelente","Y","importante devido ao fácil acesso.","conhecer os outros projetos com mais detalhes (resumo)");
INSERT INTO lime_survey_57346 VALUES("391","1980-01-01 00:00:00","pt","F","17","Manaus","Amazonas","Fundação Nokia de Ensino","3","1","","0","0","0","0","0","0","0","1","-oth-","12","3","2","1","2","","","3","2","1","1","","","2","2","2","2","3","3","3","3","1","","","Y","","","","","","3","4","4","Y","um site bastante informativo, organizado e que tenta passar o máximo de informações e esclarecer dúvidas quanto a febrace.","N","","");
INSERT INTO lime_survey_57346 VALUES("392","1980-01-01 00:00:00","pt","","","Manaus","Amazonas","Fundação Nokia de Ensino","3","1","","0","0","0","0","0","0","0","1","-oth-","10","3","2","2","3","","","2","1","1","1","","","2","2","2","2","3","3","2","2","3","","","Y","","","","","Fotolog","5","4","5","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("393","1980-01-01 00:00:00","pt","M","14","Macapá","Amapá","Nilton Balieiro Machado","2","1","","0","0","0","1","0","0","0","0","-oth-","10","1","2","3","2","","","3","2","3","1","","","2","2","3","3","3","3","2","2","2","","","Y","","","","","","5","4","4","Y","muito bom","Y","Acho que é uma coisa justa e necessária","");
INSERT INTO lime_survey_57346 VALUES("394","1980-01-01 00:00:00","pt","F","49","Estância","Sergipe","Senador W. Franco","2","2","","0","0","0","0","0","0","1","0","-oth-","40","2","2","1","1","","","2","1","2","1","","","1","2","1","1","","1","2","2","2","","","","","","","Y","","4","4","5","N","","N","","sim, a integração");
INSERT INTO lime_survey_57346 VALUES("395","1980-01-01 00:00:00","pt","M","14","São Paulo","São Paulo","Objetivo","1","1","","0","0","0","1","0","0","0","0","-oth-","9","4","3","1","1","","","4","1","1","1","","","4","4","2","2","3","4","4","2","4","","","Y","","","","","","5","4","5","Y","organizado e atualizado, notícias atualizadas no fórum, organizado com imagens a sua história","Y","para alguns programas que abrem a página da web é bom, como o Internet Explorer, mas em outras como Opera, não é possível.","");
INSERT INTO lime_survey_57346 VALUES("396","1980-01-01 00:00:00","pt","F","16","Limeira","São Paulo","ETEC Trajano Camargo","2","1","","0","0","0","1","0","1","0","0","-oth-","10","2","2","2","1","","","2","1","1","1","","","2","1","1","1","2","2","2","1","2","","","Y","","","","","","5","4","3","Y","é um site interessante, com inovações, criatividade e diversos projetos ajudam no dia-a-dia das pessoas é muito eficiente.","N","","");
INSERT INTO lime_survey_57346 VALUES("397","1980-01-01 00:00:00","pt","F","18","São Paulo","São Paulo","ETEC Getúlio Vargas","2","1","","0","0","1","0","1","0","0","0","-oth-","6","4","1","1","1","","","4","3","1","1","","","4","2","2","4","4","4","4","1","3","","","Y","Y","Y","","","","5","4","2","Y","bem organizado, de fácil acesso às informações necessárias","Y","muito útil, pois faz com que as pessoas economizem tempo enviando seus projetos sem sair de casa","");
INSERT INTO lime_survey_57346 VALUES("398","1980-01-01 00:00:00","pt","F","17","São Paulo","São Paulo","ETEC Getúlio Vargas","2","1","","0","0","0","0","0","0","0","1","-oth-","8","4","2","1","2","","","4","2","1","1","","","4","2","3","2","4","4","4","1","3","","","Y","","","","","","5","2","3","Y","é bem organizado, fácil de navegar e contém todas as informações necessárias","Y","era fácil de colocar as nossas informações e bem inoformativo em relação a feira","");
INSERT INTO lime_survey_57346 VALUES("399","1980-01-01 00:00:00","pt","F","37","Esteio","Rio Grande do Sul","","","3","","1","0","0","0","0","0","0","0","-oth-","29","4","","","","","","4","2","4","2","","","4","2","2","","2","3","","","2","","","Y","","","","","MSN","4","3","4","N","","","","");
INSERT INTO lime_survey_57346 VALUES("400","1980-01-01 00:00:00","pt","F","16","Esteio","Rio Grande do Sul","Coração de Maria","1","1","","0","0","0","1","0","0","0","0","-oth-","6","4","3","1","1","","","4","3","1","1","","","4","2","2","2","3","4","4","1","3","","","Y","","","","","Blogs, MSN","4","3","4","Y","é um site bem organizado e informativo","Y","acredito ser um bom sistema, não tive problemas ao utilizá-lo","");
INSERT INTO lime_survey_57346 VALUES("401","1980-01-01 00:00:00","pt","M","16","Maracanaú","Ceará","Liceu Estadual de Maracanaú","2","1","","0","0","0","1","0","0","0","0","-oth-","12","4","","","","","","","4","","","","","4","1","3","3","3","2","3","2","2","","","Y","Y","","","","","5","5","5","Y","organizado, contem as informações necessárias para estar ciente sobre a febrace e seus eventos","Y","é justo, claro e correto. os projetos são avaliados e escolhidos dentre vários para ser finalista.","pesquisas e informações sobre feiras de ciências que acontecem por todo Brasil");
INSERT INTO lime_survey_57346 VALUES("402","1980-01-01 00:00:00","pt","M","17","Maracanaú","Ceará","Liceu Estadual de Maracanaú","2","1","","0","0","0","1","0","0","0","0","-oth-","7","3","2","2","1","","","3","3","2","1","","","3","2","2","1","3","3","3","2","2","","","Y","","","","","","5","3","3","Y","bem sucinto. sempre aparece o que eu preciso na página inicial.","Y","simples. perguntas práticas, que facilitam o compreendimento e consequentemente as respostas","");
INSERT INTO lime_survey_57346 VALUES("403","1980-01-01 00:00:00","pt","F","16","Limeira","São Paulo","ETEC Trajano Camargo","2","1","","0","0","0","1","0","1","0","0","-oth-","11","3","2","1","1","","","3","1","1","1","","","3","1","1","1","2","2","2","2","1","","","Y","","","","","","5","3","4","Y","um site que contém informações importantes e criativo","Y","facilita muito na hora de enviar o projeto","");
INSERT INTO lime_survey_57346 VALUES("404","1980-01-01 00:00:00","pt","F","16","Limeira","São Paulo","ETEC Trajano Camargo","2","1","","0","0","0","1","0","1","0","0","-oth-","9","3","2","1","1","","","3","1","1","1","","","3","1","1","2","3","2","2","1","2","","","Y","","","","","","5","4","3","Y","uma página bem elaborada, com informações importantes e de fácil entendimento.","Y","mais prático e eficiente, já que não é necessária a ida ao correio para enviar os dados e relatório.","");
INSERT INTO lime_survey_57346 VALUES("405","1980-01-01 00:00:00","pt","F","16","Limeira","São Paulo","ETEC Trajano Camargo","2","1","","0","0","0","1","0","0","0","0","-oth-","9","4","2","1","1","","","4","2","1","1","","","3","3","1","","3","4","3","1","3","","","Y","","","","","","5","3","4","Y","ele contem todas as informações necessárias de forma de fácil entedimento","Y","é um modo prático para o envio dos projetos e de fácil preenchimento","");
INSERT INTO lime_survey_57346 VALUES("406","1980-01-01 00:00:00","pt","M","17","Maringá","Paraná","Marista","1","1","","0","0","0","1","0","0","0","0","-oth-","10","4","2","1","1","","","4","4","1","1","","","4","1","2","2","3","1","1","1","2","","","","","","","Y","","5","4","4","Y","o site é bem organizado e visualmente atrativo","Y","não acho que esteja perfeito, pois tive dificuldades em enviar os projetos por ele, mas é muito útil e só precisa de alguns ajustes.","eu acho que a internet facilita o contato do estudante com o conhecimento e a matéria a que ele não acesso fisicamente, por meio de um professor. então, talvez fosse uma boa idéia instalar uma rede wireless na febrace.");
INSERT INTO lime_survey_57346 VALUES("407","1980-01-01 00:00:00","pt","M","16","Imperatriz","Maranhão","Instituto Federal de Educação, Ciência e Tecnologia","2","","","0","0","0","1","0","0","0","0","-oth-","6","4","3","1","1","","","4","2","1","1","","","4","1","2","2","3","4","2","1","2","","","Y","Y","","Y","","","4","3","4","Y","é um site interessante, mas falta um pouco mais de interatividade com o usuário, mas a organização é excelente","N","","sim, que a internet deve ser vista pelos usuários como uma fonte para enriquecer conhecimentos, coisa que de fato não ocorre.");
INSERT INTO lime_survey_57346 VALUES("408","1980-01-01 00:00:00","pt","M","","Imperatriz","Maranhão","Teresinha","1","","","0","0","0","1","0","0","0","0","-oth-","10","3","2","1","2","","","3","2","4","1","","","4","1","2","2","4","3","2","2","2","","","Y","Y","","","","","4","3","4","Y","Muito interessante, diversificado e de muito fácil navegação. Faltando apenas uma interatividade entre os que o acessam.","Y","prático e seguro","na minha opinião, tendo em vista as vastas oportunidades de relacionamento e trocas de experiências que o mesmo proporciona, deveríamos criar um espaço de interatividade, para nós, jovens pesquisadores.");
INSERT INTO lime_survey_57346 VALUES("409","1980-01-01 00:00:00","pt","M","18","São Miguel do Iguaçu","Paraná","Nestor Victor dos Santos","2","1","","0","0","1","0","0","0","0","0","-oth-","15","4","","","","","","4","1","2","1","","","4","3","3","3","3","4","4","4","4","","","Y","","","","","","5","4","4","Y","site muito bom, atual, fácil manuseio","Y","é considerado bom, pois evita contra tempos","");
INSERT INTO lime_survey_57346 VALUES("410","1980-01-01 00:00:00","pt","M","","São Miguel do Iguaçu","Paraná","Nestor Victor dos Santos","2","3","","0","1","0","0","0","0","0","0","1","","1","1","1","1","","","1","1","1","1","","","1","1","1","1","1","1","1","1","1","","","","","","","Y","","5","4","4","Y","é muito bom","N","","");
INSERT INTO lime_survey_57346 VALUES("411","1980-01-01 00:00:00","pt","M","19","Estância","Sergipe","Senador W. Franco","2","1","","0","0","0","0","0","0","0","1","-oth-","12","1","1","4","1","","","4","1","1","1","","","4","1","4","4","4","4","1","1","1","4","orkut","Y","","","","","","5","5","1","Y","ele é muito bom, apenas deveria ter mais fotos do evento.","Y","não gostei","Conheci várias pessoas que vão estar presentes no evento, através da comunidade FEBRACE no orkut");
INSERT INTO lime_survey_57346 VALUES("412","1980-01-01 00:00:00","pt","F","19","Estância","Sergipe","Senador W. Franco","2","","","0","0","0","0","0","1","0","0","-oth-","18","1","1","2","1","","","2","1","1","1","","","2","1","1","1","1","2","1","1","1","2","orkut","Y","","","","","","5","2","1","Y","é legal","N","","");
INSERT INTO lime_survey_57346 VALUES("413","1980-01-01 00:00:00","pt","M","33","Estância","Sergipe","Senador W. Franco","2","2","","0","0","0","0","0","0","1","0","-oth-","20","4","2","1","2","","","4","2","2","3","","","4","3","2","2","4","4","3","2","3","","","Y","","","","","","5","5","3","Y","as informações que se encontram lá são de grande importância para os que se propõem a mudar o mundo partindo da criação","N","","o importante é a divulgação dos inventos e das idéias expostas na febrace");
INSERT INTO lime_survey_57346 VALUES("414","1980-01-01 00:00:00","pt","M","17","Manaus","Amazonas","Fundação Nokia de Ensino","3","1","","0","0","0","0","0","0","0","1","-oth-","14","4","2","2","2","","","4","4","1","1","","","4","2","2","2","2","4","4","1","3","","","Y","","Y","","","","5","5","5","Y","é um site interessante, mas acho que deixa um pouco a desejar na facilidade de encontrar o que se queira.","Y","é rápido e de fácil utilizamento.","");
INSERT INTO lime_survey_57346 VALUES("415","1980-01-01 00:00:00","pt","M","17","Manaus","Amazonas","Fundação Nokia de Ensino","3","1","","0","0","0","0","0","0","0","1","-oth-","11","4","2","2","2","2","UFAM","4","2","1","1","","","4","1","3","3","4","4","4","1","3","","","Y","","Y","","","","5","4","3","Y","o site tem uma ótima apresentação, porém acredito que ainda deixa a desejar na performance de navegabilidade. eu me perdia no site.","Y","outra ferramenta útil, porém o preenchimento dos formulários as vezes apresentava um status duvidoso.","");
INSERT INTO lime_survey_57346 VALUES("416","1980-01-01 00:00:00","pt","M","33","Manaus","Amazonas","Fundação Nokia de Ensino","3","2","","0","0","0","0","0","0","1","0","-oth-","14","4","4","","","","","","4","4","","","","4","2","2","2","4","4","1","3","2","","","","","","","Y","","5","5","5","Y","excelente!","Y","muito bom!","");
INSERT INTO lime_survey_57346 VALUES("417","1980-01-01 00:00:00","pt","M","14","Vitória da Conquista","Bahia","Nossa Senhora de Fátima","1","1","","0","0","0","1","0","0","0","0","-oth-","7","4","3","1","1","2","casa de amigo","4","2","1","1","","","4","2","3","3","4","2","4","1","2","","","Y","","","","","","5","4","4","Y","ele estimula os jovens a criarem projetos, além de ser rápido, claro","Y","ele é um sistema muito prático e rápido.","");
INSERT INTO lime_survey_57346 VALUES("418","1980-01-01 00:00:00","pt","F","46","Vitória da Conquista","Bahia","Nossa Senhora de Fátima","1","2","","0","0","0","0","0","0","1","0","-oth-","36","2","2","2","2","2","faculdade","3","1","1","1","","","2","1","1","1","2","2","2","2","2","","","Y","","","","","","4","4","4","Y","incentivar o jovem cientista de forma clara e objetiva","Y","bastante interativo e de fácil utilização.","");
INSERT INTO lime_survey_57346 VALUES("419","1980-01-01 00:00:00","pt","M","38","Vitória da Conquista","Bahia","Nossa Senhora de Fátima","1","2","","0","0","0","0","0","0","0","1","-oth-","23","4","4","1","1","","","4","4","4","1","","","4","2","2","4","4","4","2","1","4","","","Y","","","","","","5","5","5","Y","o site com uma boa interface e sempre disponível.","Y","serviço bastante rápido e prático","seria bom que disponibiliza-se os vídeos das feiras anteriores para tornar o site mais atrativo.");
INSERT INTO lime_survey_57346 VALUES("420","1980-01-01 00:00:00","pt","F","50","Vitória da Conquista","Bahia","Nossa Senhora de Fátima","1","3","","0","0","0","0","0","0","1","0","-oth-","23","4","","","","4","Trabalho","4","4","4","","","","4","","","","3","3","","","3","","","","","","","Y","","5","4","4","Y","considero a febrace uma fonte de motivação e valorização para os jovens do nosso país.","Y","de difícil acesso as classes menos favorecidas.","");
INSERT INTO lime_survey_57346 VALUES("421","1980-01-01 00:00:00","pt","F","16","São Paulo","São Paulo","Giordano Bruno","1","1","","0","0","0","1","0","0","0","0","-oth-","6","4","2","1","1","","","4","1","1","1","","","4","3","1","1","3","4","4","1","3","","","Y","","","","","","5","4","3","Y","o site é organizado","N","","");
INSERT INTO lime_survey_57346 VALUES("422","1980-01-01 00:00:00","pt","F","16","São Paulo","São Paulo","Giordano Bruno","1","1","","0","0","0","1","0","0","0","0","-oth-","5","4","2","1","2","","","4","4","2","1","","","4","1","1","3","4","4","4","4","1","","","Y","Y","","","","","5","1","1","Y","é confuso, pois demora muito para achar o portal procurado","Y","satisfatório","");
INSERT INTO lime_survey_57346 VALUES("423","1980-01-01 00:00:00","pt","F","16","São Paulo","São Paulo","Giordano Bruno","1","1","","0","0","0","1","0","0","0","0","-oth-","8","3","2","1","1","","","3","1","4","1","","","4","1","1","1","3","4","4","1","2","","","Y","","","","","","5","1","1","Y","o site é confuso","Y","o sistema é bom","");
INSERT INTO lime_survey_57346 VALUES("424","1980-01-01 00:00:00","pt","F","18","Araras","São Paulo","Francisco Graziano","2","1","","0","0","1","0","0","0","0","0","-oth-","10","1","1","2","3","","","3","2","2","1","","","3","2","1","2","3","2","1","2","2","","","Y","","","","","","4","4","4","Y","é um bom site, porém algumas notícias e explicações poderia ser dadas com mais clareza.","N","","");
INSERT INTO lime_survey_57346 VALUES("425","1980-01-01 00:00:00","pt","M","18","Araras","São Paulo","Francisco Graziano","2","1","","0","0","1","0","0","0","0","0","-oth-","12","4","1","1","2","","","3","3","1","1","","","4","2","2","2","2","3","3","2","3","","","Y","","","","","","5","4","4","Y","um ótimo site","N","","");
INSERT INTO lime_survey_57346 VALUES("426","1980-01-01 00:00:00","pt","F","15","Jaraguá do Sul","Santa Catarina","Luiz Gonzaga Ayroso","2","1","","0","0","0","1","0","0","0","0","-oth-","11","3","2","2","2","","","3","1","1","1","","","2","2","2","1","3","3","2","2","3","","","Y","","","","","","5","3","4","Y","achei muito interessante, é muito bem organizado... bom, é isso!","","","");
INSERT INTO lime_survey_57346 VALUES("427","1980-01-01 00:00:00","pt","F","45","Jaraguá do Sul","Santa Catarina","Luiz Gonzaga Ayroso","2","2","","0","0","0","0","0","0","1","0","-oth-","35","4","4","","4","","","4","4","","","","","4","","4","4","","","","","","","","Y","","","","","","5","5","5","N","","","","");
INSERT INTO lime_survey_57346 VALUES("428","1980-01-01 00:00:00","pt","F","14","Jaraguá do Sul","Santa Catarina","Luiz Gonzaga Ayroso","2","1","","0","0","0","1","0","0","0","0","-oth-","11","","","","3","","","3","","","","","","3","","","","","","3","","3","","","Y","","","","","","5","5","5","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("429","1980-01-01 00:00:00","pt","F","14","Jaraguá do Sul","Santa Catarina","Luiz Gonzaga Ayroso","2","1","","0","0","0","1","0","0","0","0","-oth-","10","3","2","2","2","","","3","1","1","1","","","2","2","2","2","2","3","3","2","2","","","Y","","","","","","4","3","4","Y","muito bom, apresenta todas informações de como acontecerá a feira, etc.","N","","");
INSERT INTO lime_survey_57346 VALUES("430","1980-01-01 00:00:00","pt","F","16","Jaraguá do Sul","Santa Catarina","Luiz Gonzaga Ayroso","2","1","","0","0","0","1","0","0","0","0","-oth-","15","","2","","","","","2","","","","","","2","1","1","1","2","","1","1","1","","","Y","","","","","","4","3","4","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("431","1980-01-01 00:00:00","pt","M","42","Jaraguá do Sul","Santa Catarina","Luiz Gonzaga Ayroso","2","2","","0","0","0","0","0","0","1","0","-oth-","18","4","3","1","2","","","4","4","1","1","","","4","2","2","3","4","3","1","2","2","","","","","","","Y","","5","4","4","Y","muito bom","Y","bom","");
INSERT INTO lime_survey_57346 VALUES("432","1980-01-01 00:00:00","pt","F","17","Manaus","Amazonas","Fundação Nokia de Ensino","3","1","","0","0","0","0","0","0","0","1","-oth-","11","4","2","1","2","","","4","2","1","1","","","3","2","2","3","3","4","4","1","4","","","Y","Y","","","","imeen","4","2","3","Y","de fácil acesso, com todas as informações que precisamos. muito bom.","Y","só não gostei do fato de dois integrantes poderem logar ao mesmo tempo e enviar as informações, tivemos alguns conflitos quanto a isso.","");
INSERT INTO lime_survey_57346 VALUES("433","1980-01-01 00:00:00","pt","F","17","Macaé","Rio de Janeiro","Luiz Reid","2","1","","0","0","0","1","0","0","0","0","-oth-","14","3","1","1","1","","","","3","","","","","2","2","1","1","2","2","1","2","4","","","Y","","","","","","5","3","1","Y","é bom, muito explicativo","N","","");
INSERT INTO lime_survey_57346 VALUES("434","1980-01-01 00:00:00","pt","M","16","Pouso Alegre","Minas Gerais","Escola Técnica de Eletrônica FMC","3","1","","0","0","0","1","0","1","0","0","-oth-","10","1","2","2","1","","","2","2","1","1","","","2","1","1","1","2","2","2","2","2","","","Y","","","","","","5","4","5","Y","organizado, bem elaborado e interessante","N","","");
INSERT INTO lime_survey_57346 VALUES("435","1980-01-01 00:00:00","pt","M","17","Santa Rita do Sapucaí","Minas Gerais","Escola Técnica de Eletrônica FMC","3","1","","0","0","0","1","0","1","0","0","-oth-","5","4","2","2","1","","","3","4","3","1","","","4","2","1","3","2","4","4","4","4","","","Y","","","","","","5","4","4","Y","organizada, uma navegação rápida","Y","por e-mail tudo fica mais fácil e rápido","gosto de realizar pesquisas sobre projetos eletrônicos e sobre deficientes visuais");
INSERT INTO lime_survey_57346 VALUES("436","1980-01-01 00:00:00","pt","F","16","Santa Rita do Sapucaí","Minas Gerais","Escola Técnica de Eletrônica FMC","3","1","","0","0","0","1","0","1","0","0","-oth-","7","4","2","1","1","","","4","3","1","2","","","3","2","1","2","3","3","1","1","3","","","Y","","","","","","5","5","4","Y","organizado e bem elaborado","N","","");
INSERT INTO lime_survey_57346 VALUES("437","1980-01-01 00:00:00","pt","M","19","Cataguares","Minas Gerais","CEFET","2","1","","0","0","1","0","1","0","0","0","-oth-","15","4","3","1","1","","","4","1","3","2","","","4","2","2","2","2","3","3","3","3","","","Y","","","","","","5","4","2","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("438","1980-01-01 00:00:00","pt","M","18","Cataguares","Minas Gerais","CEFET","2","1","","0","0","1","0","1","0","0","0","-oth-","10","4","3","2","2","","","4","3","2","1","","","4","2","3","3","4","4","3","2","2","","","Y","","","","","","4","3","4","N","","Y","bem organizado","");
INSERT INTO lime_survey_57346 VALUES("439","1980-01-01 00:00:00","pt","M","18","Cataguares","Minas Gerais","CEFET","2","1","","0","0","1","0","1","0","0","0","-oth-","10","4","4","2","2","","","4","2","2","2","","","4","4","4","4","4","4","4","4","4","","","Y","","","","","","5","2","5","Y","bem organizado","N","","");
INSERT INTO lime_survey_57346 VALUES("440","1980-01-01 00:00:00","pt","M","27","Imperatriz","Maranhão","Dorgival Pinheiro de Souza","2","2","","0","0","0","0","0","0","1","0","-oth-","20","4","3","2","1","","","4","2","1","1","","","4","1","3","2","4","4","4","4","2","","","Y","","","","","","4","4","4","Y","atende as necessidades","Y","as vezes confunde","");
INSERT INTO lime_survey_57346 VALUES("441","1980-01-01 00:00:00","pt","M","17","Imperatriz","Maranhão","Dorgival Pinheiro de Souza","2","1","","0","0","0","1","0","0","0","0","-oth-","13","1","2","3","1","","","3","2","1","1","","","3","2","2","","3","","2","2","3","","","Y","","","","","","5","4","4","Y","muito bom e organizado","N","","");
INSERT INTO lime_survey_57346 VALUES("442","1980-01-01 00:00:00","pt","M","16","Imperatriz","Maranhão","Santa Teresinha","1","1","","0","0","0","1","0","0","0","0","-oth-","9","4","2","1","2","","","3","4","1","2","","","4","1","3","4","4","4","4","1","4","","","Y","","Y","","","flickr, carbonmade","5","3","5","Y","bem organizado, layout legal porém algumas informações faltam. por exemplo: no dia que as inscrições deveriam abrir isto não aconteceu e um novo dia não foi informado.","Y","muito bom e prático, evita a confusão que os papeis podem causar","");
INSERT INTO lime_survey_57346 VALUES("443","1980-01-01 00:00:00","pt","M","58","Imperatriz","Maranhão","UEMA","2","2","","0","0","0","0","0","0","1","0","-oth-","","1","1","","1","","","4","4","","","","","","","","","4","","","","","","","","","","","","","5","5","5","Y","fantástico","","","");
INSERT INTO lime_survey_57346 VALUES("444","1980-01-01 00:00:00","pt","F","16","Maracanaú","Ceará","Liceu Estadual de Maracanaú","2","1","","0","0","0","1","0","1","0","0","-oth-","12","3","3","2","3","","","3","1","3","2","","","3","2","2","2","2","3","2","1","2","","","Y","","","","","","4","4","4","N","","N","","");
INSERT INTO lime_survey_57346 VALUES("445","1980-01-01 00:00:00","pt","M","16","Maracanaú","Ceará","Liceu Estadual de Maracanaú","2","1","","0","0","0","1","0","1","0","0","-oth-","9","3","3","2","2","","","3","1","4","1","","","3","1","2","2","2","3","2","1","2","","","Y","","Y","","","","3","4","4","Y","é um site simples e eficiente, no entanto a estrutura de links é um tanto falha, obscura.","Y","muito eficiente, prático e funcional","");
INSERT INTO lime_survey_57346 VALUES("446","1980-01-01 00:00:00","pt","M","16","Maracanaú","Ceará","Liceu Estadual de Maracanaú","2","1","","0","0","0","1","0","0","0","0","-oth-","11","3","3","3","2","","","3","1","1","1","","","2","1","1","1","3","2","2","2","2","","","Y","","","","","","5","3","4","Y","gosto muito da criatividade...","N","","");
INSERT INTO lime_survey_57346 VALUES("447","1980-01-01 00:00:00","pt","F","15","Maracanaú","Ceará","Liceu Estadual de Maracanaú","2","1","","0","0","0","1","0","0","0","0","1","","1","2","2","1","2","familiares","1","1","2","1","","","2","1","1","2","1","2","2","1","1","","","Y","","","","","","5","2","4","Y","eu acho bom, até porque ele serve de apoio diante dos trabalhos de projeto.","N","","");
INSERT INTO lime_survey_57346 VALUES("448","1980-01-01 00:00:00","pt","M","16","Maracanaú","Ceará","Liceu Estadual de Maracanaú","2","1","","0","0","0","1","0","0","0","0","","","2","2","1","1","","","2","1","1","1","","","2","2","2","2","2","1","1","1","2","","","Y","","","","","","3","3","3","Y","chama muita atenção","","","");
INSERT INTO lime_survey_57346 VALUES("449","1980-01-01 00:00:00","pt","M","18","Camaragibe","Pernambuco","Ministro Jarbas Passarinho","2","1","","0","0","0","0","0","1","0","0","-oth-","11","4","1","2","1","","","4","2","2","1","","","3","1","2","2","3","3","4","3","2","","","Y","","","","","","5","5","4","Y","é um site cuja as informações necessárias são explicítas, com vários links interessantes","Y","achei interessante e justo, pois acontecem imprevistos, dai então, os projetos são submitidos.","");
INSERT INTO lime_survey_57346 VALUES("450","1980-01-01 00:00:00","pt","M","23","Belo Horizonte","Minas Gerais","CEFET","2","2","","0","0","0","0","0","0","1","0","-oth-","12","4","4","1","1","","","4","2","1","1","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO lime_survey_57346 VALUES("451","1980-01-01 00:00:00","pt","M","18","Contagem","Minas Gerais","CEFET","2","1","","0","0","0","0","0","1","0","0","-oth-","10","2","2","1","2","","","2","2","1","1","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO lime_survey_57346 VALUES("452","1980-01-01 00:00:00","pt","M","19","Belo Horizonte","Minas Gerais","CEFET","2","1","","0","0","0","0","1","0","0","0","-oth-","6","4","2","1","1","","","4","1","1","1","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO lime_survey_57346 VALUES("453","1980-01-01 00:00:00","pt","M","20","São Lorenço","Pernambuco","Ministro Jarbas Passarinho","2","1","","0","0","1","0","0","1","0","0","-oth-","15","1","2","3","2","","","3","1","1","1","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO lime_survey_57346 VALUES("454","1980-01-01 00:00:00","pt","F","16","","Rio Grande do Sul","CEFET","2","1","","0","0","0","1","1","0","0","0","-oth-","10","3","2","2","","","","3","2","1","1","","","3","2","3","1","3","3","3","3","3","","","Y","","","","","","3","2","3","Y","organizado, claro e objetivo, porém omite algumas informações importantes como cronograma.","N","","");
INSERT INTO lime_survey_57346 VALUES("455","1980-01-01 00:00:00","pt","F","55","Sapucaia do Sul","Rio Grande do Sul","CEFET","2","2","","0","0","0","0","0","0","1","0","-oth-","38","4","4","1","1","","","3","4","","","","","4","","","","3","1","1","1","2","","","","","","","Y","","5","5","4","Y","não tive problemas para obter as informações necessárias","Y","tivemos contratemposcom este, não havia no site da febrace, aviso sobre o horário limite de postagem. qdo fomos enviar online nosso projeto as 14h não conseguimos. tivemos que enviar pelo correio. deveria ter sido até as 24h","");
INSERT INTO lime_survey_57346 VALUES("456","1980-01-01 00:00:00","pt","F","17","Imperatriz","Maranhão","Dorgival Pinheiro de Souza","2","1","","0","0","0","1","0","0","0","0","-oth-","14","","","3","","","","3","","","","","","3","1","","","3","3","1","1","3","","","Y","","Y","","","","5","4","2","Y","é de extrema importância para obtermos informações sobre a feira.","Y","altamente seguro","");
INSERT INTO lime_survey_57346 VALUES("457","1980-01-01 00:00:00","pt","M","17","Macaé","Rio de Janeiro","Luiz Reid","2","1","","0","0","0","1","0","0","0","0","-oth-","10","4","1","1","1","","","4","2","4","2","","","4","2","2","2","3","4","4","2","2","","","Y","","","","","","4","5","4","Y","um site atrativo e facil navegação","Y","eficiente","");
INSERT INTO lime_survey_57346 VALUES("458","1980-01-01 00:00:00","pt","M","14","Londrina","Paraná","Interativa","1","1","","0","0","0","1","0","0","0","0","-oth-","9","4","2","2","1","","","4","2","1","1","","","4","4","2","4","4","4","4","1","4","","","Y","","","","","","5","3","4","Y","fácil de achar as coisas, boa navegação e etc. parabéns","Y","bem feito, um bom painel de controle, perfeito para o bom uso de uma feira.","");
INSERT INTO lime_survey_57346 VALUES("459","1980-01-01 00:00:00","pt","M","15","Londrina","Paraná","Interativa","1","1","","0","0","0","1","0","0","0","0","-oth-","4","2","2","2","","","","2","2","1","1","","","2","2","1","1","1","2","2","1","2","","","Y","","","","","","4","4","3","Y","legal","Y","meio complicado","");
INSERT INTO lime_survey_57346 VALUES("460","1980-01-01 00:00:00","pt","M","14","Londrina","Paraná","Interativa","1","1","","0","0","0","1","0","0","0","0","-oth-","11","4","2","2","1","","","4","2","4","4","","","4","3","1","2","2","4","4","3","3","","","Y","","","","","","5","3","5","Y","eu achei um site bom, porque la informa tudo sobre a feira, tira suas dúvidas","Y","bem um bom painel de controle e um bom uso na feira","");
INSERT INTO lime_survey_57346 VALUES("461","1980-01-01 00:00:00","pt","M","19","Cataguares","Minas Gerais","CEFET","2","1","","0","0","0","0","0","0","0","1","-oth-","10","4","2","1","2","","","4","4","1","1","","","4","3","1","2","3","2","4","2","2","","","Y","","Y","","","","5","5","4","Y","uma ótima feira que consegue acima de tudo unir estudantes do brasil inteiro a fim de ajudar no progresso da ciência","Y","excelente, bem claro e simples de usar","");
INSERT INTO lime_survey_57346 VALUES("462","1980-01-01 00:00:00","pt","M","18","Cataguares","Minas Gerais","CEFET","2","1","","0","0","0","0","0","0","0","1","-oth-","10","3","4","2","1","","","4","3","1","1","","","4","3","3","3","4","3","2","2","3","","","Y","","Y","","","","5","5","4","Y","é um site com um padrão bem definido, com uma interface de acesso rápido e fácil e totalmente comprometido com seus objetivos","Y","muito bom e de fácil manuseio","");
INSERT INTO lime_survey_57346 VALUES("463","1980-01-01 00:00:00","pt","F","18","Juiz de Fora","Minas Gerais","CEFET","2","1","","0","0","0","0","0","0","0","1","-oth-","8","","","","","","","3","4","1","1","4","trabalho","4","1","1","2","4","2","3","1","1","3","ensino a distância","Y","","Y","","","","4","5","4","Y","muito funcional, para todos, escolas, estudantes, interessados das áreas, etc","Y","muito bom, dá para se situar, acompanhar o preenchimento dos dados e situação do projeto.","");
INSERT INTO lime_survey_57346 VALUES("464","1980-01-01 00:00:00","pt","M","27","Cataguares","Minas Gerais","CEFET","2","2","","0","0","0","0","0","0","1","0","-oth-","18","4","4","2","2","","","4","4","1","1","","","4","2","3","3","3","4","4","3","3","","","Y","","","","","","5","5","5","Y","satisfatório","Y","satisfatório","");
INSERT INTO lime_survey_57346 VALUES("465","1980-01-01 00:00:00","pt","M","17","Osasco","São Paulo","Fundação Bradesco","3","1","","0","0","0","1","0","0","0","0","","","4","3","2","1","","","4","2","2","1","","","4","4","2","2","2","4","4","2","3","","","Y","","","","","","5","4","4","Y","gosto. acho bem organizado.","Y","acho prático e eficiente","");
INSERT INTO lime_survey_57346 VALUES("466","1980-01-01 00:00:00","pt","F","43","Osasco","São Paulo","Fundação Bradesco","3","2","","0","0","0","0","0","0","1","0","-oth-","20","4","3","2","2","","","4","4","4","2","","","4","2","3","3","4","3","4","3","4","","","Y","","","","","","5","5","4","Y","ótimo","Y","bem elaborado","");
INSERT INTO lime_survey_57346 VALUES("467","1980-01-01 00:00:00","pt","F","49","","São Paulo","Fundação Bradesco","3","3","","0","0","0","0","0","0","1","0","-oth-","20","4","4","","2","","","4","4","","","","","4","2","2","2","4","","","","","","","","","","","","","5","5","5","Y","muito claro e objetivo","N","","");
INSERT INTO lime_survey_57346 VALUES("468","1980-01-01 00:00:00","pt","F","15","Londrina","Paraná","Interativa","1","1","","0","0","0","1","0","0","0","0","","","4","2","1","1","","","4","2","1","1","","","4","1","3","4","4","4","3","4","3","","","Y","","","","","","5","3","2","Y","muito bom, poderia ser mais informativo","Y","muito prático","");
INSERT INTO lime_survey_57346 VALUES("469","1980-01-01 00:00:00","pt","F","39","Londrina","Paraná","Interativa","1","2","","0","0","0","0","0","0","1","0","-oth-","30","4","4","","","","","4","3","4","","","","4","1","2","2","4","4","2","1","3","","","Y","","","","","","5","5","5","Y","poderia apresentar os trabalhos na íntegra (monografias) como um recurso de pesquisa.","Y","deveria especificar mais os pontos falhos do projeto. críticas","");
INSERT INTO lime_survey_57346 VALUES("470","1980-01-01 00:00:00","pt","M","22","Londrina","Paraná","Interativa","1","2","","0","0","0","0","0","0","1","0","-oth-","11","4","4","2","2","","","4","3","","","","","4","2","1","2","4","4","3","1","2","","","Y","","","","","","5","2","4","Y","muito bem elaborado e informativo, disponilizando todas as informações necessárias aos participantes.","Y","ótimo, facilitando muito a submissão para participação.","");
INSERT INTO lime_survey_57346 VALUES("471","1980-01-01 00:00:00","pt","F","","Londrina","Paraná","Interativa","1","1","","0","0","0","1","0","0","0","0","-oth-","10","3","2","1","1","","","3","3","1","1","","","3","1","1","1","1","3","1","1","1","","","","","","","Y","","4","3","3","Y","é bom","Y","é muito bom","");
INSERT INTO lime_survey_57346 VALUES("472","1980-01-01 00:00:00","pt","F","13","Londrina","Paraná","Interativa","1","1","","0","1","0","0","0","0","0","0","-oth-","8","3","2","2","2","","","4","2","1","1","","","3","3","1","1","1","2","3","1","2","","","Y","","","","","","4","4","4","Y","eu acho ele bom, mostra tudo da feira","Y","ele deveria criticar mais o projeto para saber o que melhorar","");
INSERT INTO lime_survey_57346 VALUES("473","1980-01-01 00:00:00","pt","F","16","São Leopoldo","Rio Grande do Sul","CEFET","2","1","","0","0","0","1","0","1","0","0","-oth-","6","3","2","1","1","","","2","3","1","1","","","3","3","2","2","2","2","3","1","2","","","Y","","","","","","3","2","4","Y","o site é informativo e organizado, porém algumas informções importantes da feira não foram divulgadas, nos deixando em dúvida.","N","","");
INSERT INTO lime_survey_57346 VALUES("474","1980-01-01 00:00:00","pt","F","17","Sapucaia do Sul","Rio Grande do Sul","CEFET","2","1","","0","0","0","1","0","1","0","0","-oth-","8","4","2","2","2","","","4","3","1","1","","","4","2","4","3","4","4","4","1","4","","","Y","Y","","","","","3","2","4","Y","organizado e de fácil entendimento, porém algumas informaçãoes como horários e detalhes do encerramento foram deixados de lado","N","","");
INSERT INTO lime_survey_57346 VALUES("475","1980-01-01 00:00:00","pt","M","15","Carazinho","Rio Grande do Sul","La Salle Carazinho","1","1","","0","0","0","1","0","0","0","0","-oth-","10","4","3","2","1","","","4","2","1","1","","","3","1","1","2","3","3","3","1","3","","","Y","","","","","","5","2","1","Y","gostei, pois contém as informações necessárias e é de fácil acesso","Y","gostei, pois é prático","");
INSERT INTO lime_survey_57346 VALUES("476","1980-01-01 00:00:00","pt","M","16","Carazinho","Rio Grande do Sul","La Salle Carazinho","1","1","","0","0","0","1","0","0","0","0","-oth-","9","4","2","","2","","","4","2","2","1","","","4","2","2","2","3","2","1","1","2","","","Y","","","","","","5","4","4","Y","muito interessante, muito bem organizado, de fácil acesso","Y","bastante interessante e prático, submeti meu projeto através dele.","");
INSERT INTO lime_survey_57346 VALUES("477","1980-01-01 00:00:00","pt","M","16","Recife","Pernambuco","Anglo Líder","1","1","","0","0","0","1","0","1","0","0","-oth-","10","4","2","1","1","","","4","4","2","1","","","4","2","2","2","4","4","4","2","4","","","Y","","","","","","5","5","5","Y","ele é bom, claro e fácil de navegar","Y","bem rápido e prático","");
INSERT INTO lime_survey_57346 VALUES("478","1980-01-01 00:00:00","pt","M","26","Paulista","Pernambuco","UFRPE","2","2","","0","0","0","0","0","1","0","0","-oth-","19","4","3","2","1","","","4","2","4","1","","","4","1","1","1","4","3","2","1","2","","","Y","","","","","","5","4","5","Y","é um site bastante informativo contendo todas as informações sobre o evento, além de permitir boa interação","Y","simples e objetivo","a internet é uma ferramenta de extrema importância, que contribui para o desenvolvimento geral amplo das pessoas.");
INSERT INTO lime_survey_57346 VALUES("479","1980-01-01 00:00:00","pt","M","41","Recife","Pernambuco","Senai","3","2","","0","0","0","0","0","0","1","0","-oth-","25","4","4","","","","","4","4","","","","","4","","3","","4","","2","","","","","Y","","","","","","5","5","1","Y","informativo, porém só acessei para informações sobre a feira","N","","");
INSERT INTO lime_survey_57346 VALUES("480","1980-01-01 00:00:00","pt","F","23","Recife","Pernambuco","UFRPE","2","3","","0","0","0","0","0","0","0","1","-oth-","18","4","2","2","2","2","casa de amigo","4","1","1","1","","","3","1","4","1","3","3","4","1","3","","","Y","Y","","","","Fotolog","4","3","4","Y","conheço pouco, porque o grupo que acompanhei que olhava frequentemente, mas não o li todo","Y","muito bom e rápido","");
INSERT INTO lime_survey_57346 VALUES("481","1980-01-01 00:00:00","pt","M","18","Recife","Pernambuco","Senai","3","1","","0","0","0","0","0","1","0","0","-oth-","12","1","4","3","3","","","4","3","4","2","","","4","2","3","2","3","2","2","2","2","","","Y","","","","","","4","5","5","Y","ele é um site bem explícito e informativo para os estudantes e escolas","Y","ele tem um ótimo padrão","");
INSERT INTO lime_survey_57346 VALUES("482","1980-01-01 00:00:00","pt","M","20","Recife","Pernambuco","Senai","3","1","","0","0","0","0","0","1","0","0","-oth-","14","1","3","2","1","","","3","1","1","1","","","3","1","2","2","3","2","2","1","1","","","Y","","","","","","5","4","4","Y","está bem direcionando para nós estudantes e escolas.","Y","está com um padrão muito bom","");
INSERT INTO lime_survey_57346 VALUES("483","1980-01-01 00:00:00","pt","F","18","","Pernambuco","Senai","3","1","","0","0","0","0","0","1","0","0","-oth-","11","1","4","2","2","","","4","2","1","1","","","4","1","1","2","3","2","3","1","1","","","Y","","","","","","5","4","4","Y","construtivo e ajuda no desenvolvimento de projetos","Y","muito bom","");
INSERT INTO lime_survey_57346 VALUES("484","1980-01-01 00:00:00","pt","M","20","Recife","Pernambuco","Senai","3","2","","0","0","0","0","0","0","0","1","-oth-","8","4","4","2","2","2","casa de amigo","4","3","4","2","2","DVD","4","2","1","1","3","2","3","1","2","","","","","","","","","5","5","3","Y","muito bom, pois atende as necessidades dos participantes e dos que pretendem ser","Y","muito bom, é fácil e rápido de ser utilizado","existir cada vez mais interação, mas moderadamente");
INSERT INTO lime_survey_57346 VALUES("485","1980-01-01 00:00:00","pt","M","16","Curitiba","Paraná","Positivo","1","1","","0","0","0","1","0","0","0","0","-oth-","10","3","2","1","1","","","3","2","1","1","","","3","1","2","1","2","3","3","1","2","","","Y","","","","","","3","3","4","Y","muito bem organizado, com muitas informações interessantes","N","","");
INSERT INTO lime_survey_57346 VALUES("486","1980-01-01 00:00:00","pt","F","","Curitiba","Paraná","Positivo","1","2","","0","0","0","0","0","0","1","0","-oth-","13","3","4","2","2","","","4","4","1","1","","","4","2","2","3","4","4","2","4","3","","","Y","","","","","","5","4","4","Y","super completo","Y","agilizo o processo.","");
INSERT INTO lime_survey_57346 VALUES("487","1980-01-01 00:00:00","pt","M","33","Vitória","Espírito Santo","Clovis Borges Miguel","2","2","","0","0","0","0","0","0","1","0","-oth-","17","2","4","2","2","","","4","2","2","1","","","4","2","2","2","2","2","2","2","3","","","Y","","","","","","4","5","5","Y","ótimo site.","Y","muito bom","");
INSERT INTO lime_survey_57346 VALUES("488","1980-01-01 00:00:00","pt","F","35","Serra","Espírito Santo","Clovis Borges Miguel","2","2","","0","0","0","0","0","0","1","0","-oth-","15","3","4","","","","","4","3","","","","","4","2","","3","4","1","1","1","2","2","cursos","","","","","Y","","5","5","5","Y","bem organizado","Y","prático","");
INSERT INTO lime_survey_57346 VALUES("489","1980-01-01 00:00:00","pt","F","16","Serra","Espírito Santo","Clovis Borges Miguel","2","1","","0","0","0","1","0","0","0","0","-oth-","14","4","2","","","","","4","","","2","","","4","2","1","2","3","4","1","1","4","","","Y","","","","","","4","3","5","Y","muito importante para enriquecer os conhecimentos de todos os finalistas","N","","");
INSERT INTO lime_survey_57346 VALUES("490","1980-01-01 00:00:00","pt","M","17","Serra","Espírito Santo","Clovis Borges Miguel","2","1","","0","0","0","1","0","0","0","0","-oth-","12","4","4","1","1","","","2","4","","","","","4","2","1","1","2","4","4","2","2","","","Y","","","","","","4","3","4","Y","é um site que trás algumas informações sobre os projetos finalistas que concorrerão na feira","Y","é bem mais pratico q enviar por correio","");
INSERT INTO lime_survey_57346 VALUES("491","1980-01-01 00:00:00","pt","M","15","Serra","Espírito Santo","Clovis Borges Miguel","2","1","","0","0","0","1","0","0","0","0","-oth-","6","3","2","2","1","2","casa de amigo","4","2","1","1","","","3","2","1","1","2","3","1","1","3","3","orkut","Y","","","","","","4","4","4","Y","é bom para enriquecer o conhecimento dos finalistas.","N","","se atualizar sobre projetos");
INSERT INTO lime_survey_57346 VALUES("492","1980-01-01 00:00:00","pt","M","16","Belo Horizonte","Minas Gerais","CEFET","2","1","","0","0","0","1","0","1","0","0","-oth-","7","4","","","","","","4","2","2","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO lime_survey_57346 VALUES("493","1980-01-01 00:00:00","pt","M","32","Carazinho","Rio Grande do Sul","La Salle Carazinho","1","2","","0","0","0","0","0","0","1","0","-oth-","15","4","4","2","2","","","4","2","4","2","","","4","2","2","2","3","4","2","2","2","","","Y","","","","","","5","5","4","Y","muito detalhado e fácil uso","N","","");
INSERT INTO lime_survey_57346 VALUES("494","1980-01-01 00:00:00","pt","M","16","Carazinho","","La Salle Carazinho","1","1","","0","0","0","1","0","0","0","0","-oth-","10","3","2","1","1","","","3","1","1","1","","","3","1","1","2","2","3","3","1","1","","","Y","","","","","","4","1","2","Y","bom, mas poderia colocar mais notícias sobre as feiras passadas","Y","é muito bom, bem prático","");
INSERT INTO lime_survey_57346 VALUES("495","1980-01-01 00:00:00","pt","M","16","São Paulo","São Paulo","Dante Alighieri","1","1","","0","0","0","1","0","0","0","0","-oth-","6","4","2","1","2","","","4","4","2","1","","","4","3","3","1","4","3","4","3","4","","","Y","","","","","","3","5","4","Y","há dificuldade para entrar na área de login","Y","eficientíssimo","");
INSERT INTO lime_survey_57346 VALUES("496","1980-01-01 00:00:00","pt","F","","Curitiba","Paraná","Sociedade Educacional Positivo","1","2","","0","0","0","0","0","0","1","0","-oth-","21","4","4","1","3","","","4","4","4","1","","","4","1","2","2","4","4","2","1","3","","","","","","","Y","","4","2","3","Y","provocativo e muito elegante","Y","às vezes é lento","importante meio para pesquisa e comunicação");
INSERT INTO lime_survey_57346 VALUES("497","1980-01-01 00:00:00","pt","M","15","Curitiba","Paraná","Sociedade Educacional Positivo","1","1","","0","0","0","1","0","0","0","0","-oth-","13","3","3","1","3","","","3","1","1","1","","","2","2","2","3","3","2","2","1","2","","","Y","","","","","","5","4","3","Y","achei interessante a idéia de se propagar o espírito científico e estimulá-lo, principalmente pela internet","N","","pesquisas, aquisição de conhecimento e entretenimento");
INSERT INTO lime_survey_57346 VALUES("498","1980-01-01 00:00:00","pt","F","15","Curitiba","Paraná","Colégio Positivo Ângelo Sampaio","1","1","","0","0","0","1","0","0","0","0","-oth-","9","4","4","1","2","","","2","4","4","1","","","4","1","2","1","4","4","2","1","3","","","","","Y","","","","5","1","2","Y","bom. informações precisas.","Y","regular. a submissão perde alguns dados já escritos.","");
INSERT INTO lime_survey_57346 VALUES("499","1980-01-01 00:00:00","pt","M","35","Curitiba","Paraná","Positivo","1","2","","0","0","0","0","0","0","1","0","-oth-","15","4","4","2","2","","","4","4","2","1","","","4","3","4","2","4","4","1","2","3","","","","","","","Y","","5","4","4","Y","bom. informações importantes e atualizadas. Faltam mais fotos (divulgação) no final do evento.","Y","funciona muito bem. a parte de dados de escola poderia ser centralizada (apenas 1 representante de feira afiliada preenche isso)","");
INSERT INTO lime_survey_57346 VALUES("500","1980-01-01 00:00:00","pt","M","31","Imperatriz","Maranhão","Rui Barbosa","1","2","","0","0","0","0","0","0","1","0","-oth-","18","4","4","2","","","","4","2","4","","","","3","1","1","2","4","","2","2","2","","","Y","","","","","","5","4","3","Y","bom e informativo","Y","rápido e preciso","");
INSERT INTO lime_survey_57346 VALUES("501","1980-01-01 00:00:00","pt","","","Imperatriz","Maranhão","Rui Barbosa","1","3","","0","0","1","0","0","0","0","0","-oth-","25","4","1","2","1","","","4","1","1","1","","","2","1","1","1","3","4","4","1","4","","","Y","","","","","","","4","3","Y","bem informativo","Y","Rápido e preciso","");
INSERT INTO lime_survey_57346 VALUES("502","1980-01-01 00:00:00","pt","F","15","Imperatriz","Maranhão","Rui Barbosa","1","1","","0","0","0","1","0","0","0","0","-oth-","7","1","1","2","1","4","comércio do pai","4","2","1","3","","","3","1","1","1","3","1","3","3","3","","","","","","","Y","","3","4","4","Y","bem concreto, com bom entendimento. bem organizado.","Y","rápido e preciso","");
INSERT INTO lime_survey_57346 VALUES("503","1980-01-01 00:00:00","pt","M","15","Imperatriz","Maranhão","Rui Barbosa","1","1","","0","0","0","1","0","0","0","0","-oth-","4","4","1","2","2","2","casa de amigo","4","4","1","4","","","4","4","2","4","2","4","1","1","4","","","Y","Y","","","","","1","5","5","Y","o site mesmo simples é bastante detalhado em relação as informações.","Y","muito bom, é um sistema bem rápido e não deixa escapar nenhum documento.","a internet não é só um modo de se conversar e trocar arquivos, a internet me ajudou a conhecer o mundo através dos jogos online.");
INSERT INTO lime_survey_57346 VALUES("504","1980-01-01 00:00:00","pt","M","15","Curitiba","Paraná","Positivo","1","1","","0","0","0","1","0","0","0","0","-oth-","10","2","2","1","1","","","2","2","1","1","","","2","2","1","1","2","2","1","1","2","","","","","","","Y","","4","3","3","Y","achei interessante pois eles davam exemplos de projetos do ano passado, isso nos ajudou a entrar na febrace","N","","");
INSERT INTO lime_survey_57346 VALUES("505","1980-01-01 00:00:00","pt","M","18","","Tocantins","Fundação Bradesco","3","1","","0","0","0","1","0","0","0","0","-oth-","9","","4","","","","","4","","","","","","3","","","","","4","3","","","","","","Y","","","","","5","4","5","Y","","N","","");
INSERT INTO lime_survey_57346 VALUES("506","1980-01-01 00:00:00","pt","F","34","","Tocantins","Fundação Bradesco","3","","","0","0","0","0","0","0","1","0","-oth-","16","4","4","1","2","","","4","2","2","1","","","4","1","2","2","4","2","1","1","2","","","Y","","","","","","5","4","4","Y","","N","","");
INSERT INTO lime_survey_57346 VALUES("507","1980-01-01 00:00:00","pt","F","17","Contagem","Minas Gerais","CEFET","2","1","","0","0","0","1","0","1","0","0","-oth-","8","4","3","1","2","","","4","1","2","1","","","4","2","1","1","3","2","1","1","2","","","Y","","","","","","4","4","3","Y","um pouco confuso","Y","um pouco confuso","");
INSERT INTO lime_survey_57346 VALUES("508","1980-01-01 00:00:00","pt","F","","Belo Horizonte","Minas Gerais","CEFET","2","2","","0","0","0","0","0","0","1","0","-oth-","15","3","4","1","1","","","4","4","1","1","","","4","1","1","1","2","2","1","1","1","","","","","","","Y","","4","4","3","","um pouco confuso","Y","confuso demais","");
INSERT INTO lime_survey_57346 VALUES("509","1980-01-01 00:00:00","pt","F","17","Rio Claro","São Paulo","Koelle","2","1","","0","0","0","1","0","0","0","0","-oth-","10","4","3","1","1","","","4","4","1","1","","","4","1","2","2","4","4","1","1","2","","","Y","","","","","","5","3","4","Y","é meu terceiro ano como visitante, e o primeiro ano apresentando. é uma ótima oportunidade de integração e cultura.","Y","é uma atividade de excelência em promover o avanço científico e destiná-lo ao público","é fonte de informações para formulação de conhecimento e contato com até o que está mais distante.");
INSERT INTO lime_survey_57346 VALUES("510","1980-01-01 00:00:00","pt","F","17","São Paulo","São Paulo","Dante Alighieri","1","1","","0","0","0","0","0","1","0","0","-oth-","9","4","2","2","2","","","2","4","1","1","","","4","1","3","2","2","4","4","1","2","","","Y","","Y","","","","5","5","4","Y","é bom","Y","é bom mas falha às vezes","");
INSERT INTO lime_survey_57346 VALUES("511","1980-01-01 00:00:00","pt","M","17","São Paulo","São Paulo","Dante Alighieri","1","1","","0","0","0","1","0","0","0","0","-oth-","4","4","2","2","2","","","4","4","1","1","","","3","2","2","2","2","4","1","1","3","","","Y","","","","","","3","3","4","N","","Y","é muito bom e satisfaz","");
INSERT INTO lime_survey_57346 VALUES("512","1980-01-01 00:00:00","pt","F","17","São Paulo","São Paulo","Dante Alighieri","1","1","","0","0","0","1","0","0","0","0","-oth-","7","4","3","2","2","","","2","4","1","1","","","4","1","3","2","3","4","4","1","2","","","Y","","","","","","5","5","5","Y","ele é muito bem estruturado no que se diz respeito aos projetos e as novidades sobre a febrace","Y","ele é eficiente, apesar de algumas vezes sobrecarregar ou dar problema no momento da atualização.","");
INSERT INTO lime_survey_57346 VALUES("513","1980-01-01 00:00:00","pt","M","19","Campinas","São Paulo","Fundação Bradesco","3","1","","0","0","0","0","0","0","0","1","-oth-","13","4","3","1","1","","","4","4","3","1","","","4","2","1","3","4","4","3","1","4","","","Y","","","","","","5","5","5","Y","site fácil para navegar com um bom visual","Y","funciona adequadamente","");
INSERT INTO lime_survey_57346 VALUES("514","1980-01-01 00:00:00","pt","M","17","São Paulo","São Paulo","Dante Alighieri","1","1","","0","0","0","1","0","0","0","0","-oth-","5","4","4","4","4","","","4","4","4","3","","","4","4","3","3","3","4","4","3","4","","","Y","","","","","","3","4","3","Y","neutro","Y","precisa de melhoras","");
INSERT INTO lime_survey_57346 VALUES("515","1980-01-01 00:00:00","pt","M","18","Franco da Rocha","São Paulo","Santos Dumont","1","1","","0","0","0","0","0","1","0","1","-oth-","7","2","1","3","1","","","3","1","2","1","","","3","1","1","1","1","1","1","1","2","3","pesquisa","","","","","Y","","5","5","5","Y","é um site muito bom e suas informações são constantemente atualizadas.","N","","");
INSERT INTO lime_survey_57346 VALUES("516","1980-01-01 00:00:00","pt","M","16","Santa Cruz do Rio Pardo","São Paulo","Senai","1","1","","0","0","0","1","0","0","0","0","-oth-","13","1","1","2","2","","","3","1","1","1","","","3","2","2","2","3","3","2","2","2","","","Y","","","","","","5","5","5","Y","muito bom, e na minha opinião bem planejado e organizado","Y","bom, pois facilita bastante a nossa vida (poupa tempo)","");
INSERT INTO lime_survey_57346 VALUES("517","1980-01-01 00:00:00","pt","M","16","Santa Cruz do Rio Pardo","São Paulo","Senai","1","3","","0","0","0","1","0","0","0","0","","","1","1","2","1","2","casa de amigo","2","2","1","1","","","2","2","1","1","2","2","2","1","2","","","Y","","","","","","5","5","5","Y","é muito bom, bem organizado","N","","");
INSERT INTO lime_survey_57346 VALUES("518","1980-01-01 00:00:00","pt","M","37","Santa Cruz do Rio Pardo","São Paulo","Senai","1","3","","0","0","0","0","0","0","0","1","-oth-","22","3","","","","4","Trabalho","4","4","4","","","","4","","","","","2","2","2","2","","","Y","","","","","MSN","5","1","2","Y","muito bom pois tenho fácil acesso","Y","bem organizado","");
INSERT INTO lime_survey_57346 VALUES("519","1980-01-01 00:00:00","pt","M","18","São Paulo","São Paulo","","","","","0","0","1","0","0","0","0","0","-oth-","7","4","1","2","2","","","4","2","1","1","","","3","2","2","2","3","3","3","1","3","","","Y","","","","","","5","5","4","Y","atualizado, bastante interativo, porém alguns links são dificeis de achar, como o login.","Y","Muito bom","");
INSERT INTO lime_survey_57346 VALUES("520","1980-01-01 00:00:00","pt","M","26","São Paulo","São Paulo","","","2","","0","0","0","0","0","0","1","0","-oth-","15","3","1","1","2","4","Trabalho","4","2","1","1","","","4","1","2","2","4","2","1","1","2","","","","","","","Y","","3","5","1","Y","é um site um pouco confuso para ser acessado por estudantes de colegial e fundamental","Y","muito bom","");
INSERT INTO lime_survey_57346 VALUES("521","1980-01-01 00:00:00","pt","F","17","São Paulo","São Paulo","Giordano Bruno","1","1","","0","0","0","1","0","0","0","0","-oth-","10","4","2","1","1","","","4","1","1","1","","","4","2","1","1","3","4","4","1","4","","","Y","","","","","","5","3","3","Y","confuso","Y","regular","");
INSERT INTO lime_survey_57346 VALUES("522","1980-01-01 00:00:00","pt","F","17","São Paulo","São Paulo","Giordano Bruno","1","1","","0","0","0","1","0","0","0","0","-oth-","11","4","2","1","1","","","4","2","1","1","","","4","1","1","1","2","4","2","1","2","","","Y","","","","","","5","3","3","Y","regular","Y","regular","");
INSERT INTO lime_survey_57346 VALUES("523","1980-01-01 00:00:00","pt","F","16","São Paulo","São Paulo","Giordano Bruno","1","1","","0","0","0","1","0","0","0","0","-oth-","11","4","2","1","1","","","4","4","1","1","","","4","1","1","1","3","4","1","1","1","","","Y","","","","","","4","3","3","Y","confuso","Y","regular","");
INSERT INTO lime_survey_57346 VALUES("524","1980-01-01 00:00:00","pt","F","16","Olinda","Pernambuco","Colégio de Aplicação da UFPE","2","1","","0","0","0","1","0","0","0","0","-oth-","14","4","2","2","1","","","4","2","1","1","","","4","2","2","2","2","4","2","2","4","","","Y","","","","","","4","3","4","Y","muito bem elaborado","Y","é uma ótima alternativa para a submissão de projeto","");
INSERT INTO lime_survey_57346 VALUES("525","1980-01-01 00:00:00","pt","F","36","Recife","Pernambuco","Colégio de Aplicação da UFPE","2","2","","0","0","0","0","0","0","1","0","-oth-","25","3","4","","","","","4","3","","","","","4","1","1","1","2","2","2","1","2","","","Y","","","","","","5","5","5","Y","bem informativo","Y","muito bom e minimiza o tempo de envio via correios","artigos científicos que auxiliam no embasamento teórico dos resultados experimentais");
INSERT INTO lime_survey_57346 VALUES("526","1980-01-01 00:00:00","pt","M","17","Rio Claro","São Paulo","Koelle","1","1","","0","0","0","0","0","0","0","1","-oth-","6","4","4","1","1","","","4","4","1","1","","","4","2","2","2","4","4","4","1","4","","","Y","","Y","","","","5","5","2","Y","muito atualizado, com excelente aspecto gráfico e conteúdo","Y","muito eficiente","");
INSERT INTO lime_survey_57346 VALUES("527","1980-01-01 00:00:00","pt","M","32","São Bernardo do Campo","São Paulo","Instituto Braudel","3","2","","0","0","0","0","0","0","1","0","","","4","3","1","1","","","4","4","4","1","","","4","1","2","2","4","2","2","2","2","","","Y","","","","","","5","5","5","Y","bom, necessita mais conteúdo","Y","adequado","possibilidade de realizar projetos a distância");
INSERT INTO lime_survey_57346 VALUES("528","1980-01-01 00:00:00","pt","M","17","Praia Grande","Santa Catarina","Bulcão Viana","2","1","","0","0","0","1","0","0","0","0","-oth-","10","1","3","2","4","","","1","4","2","1","","","4","2","2","2","3","4","2","1","3","","","Y","Y","","","","","5","4","5","Y","um site muito informativo, de fácil acesso e com conteúdos ótimos","Y","facilita muito o envio do projeto, pois é masis prático e rápido","gosto de aprender cada vez mais, tendo acesso a sites de varias outras feiras e comunidades relacionadas");
INSERT INTO lime_survey_57346 VALUES("529","1980-01-01 00:00:00","pt","F","17","Praia Grande","Santa Catarina","Bulcão Viana","2","1","","0","0","0","1","0","0","0","0","-oth-","13","2","1","1","1","","","2","1","1","1","","","2","1","1","2","2","2","2","1","2","","","Y","","","","","","4","5","5","Y","é prático, rápido e facilita com o esclarecimento de dúvidas","Y","é prático na inscrição de projetos, muito bom","");
INSERT INTO lime_survey_57346 VALUES("530","1980-01-01 00:00:00","pt","M","31","Praia Grande","Santa Catarina","Bulcão Viana","2","2","","0","0","0","0","0","0","1","0","-oth-","18","4","2","1","1","","","4","1","1","1","","","4","2","2","3","4","2","3","2","2","","","Y","","","","","","4","4","4","Y","tem boa acessibilidade e as informações relevantes estão na página principal, o que é ótimo","Y","fácil acesso","");
INSERT INTO lime_survey_57346 VALUES("531","1980-01-01 00:00:00","pt","F","16","Praia Grande","Santa Catarina","Bulcão Viana","2","3","","0","0","0","1","0","0","0","0","-oth-","13","4","2","1","2","","","4","1","1","1","","","2","3","1","2","2","4","4","1","2","","","Y","","","","","","4","4","5","Y","fácil, inteligente e prático","Y","facilita o envio de projetos, sem atrasos","");
INSERT INTO lime_survey_57346 VALUES("532","1980-01-01 00:00:00","pt","F","16","São Paulo","São Paulo","Bialik","1","1","","0","0","0","1","0","0","0","0","-oth-","7","4","2","1","1","","","4","4","1","1","","","4","1","1","1","4","4","1","1","2","","","Y","","Y","","","","3","3","4","Y","bom, possui todas as informações necessárias","Y","funciona muito bem","");
INSERT INTO lime_survey_57346 VALUES("533","1980-01-01 00:00:00","pt","F","18","São Paulo","São Paulo","Bialik","1","1","","0","0","0","1","0","0","0","0","-oth-","7","4","1","1","2","","","4","2","","","","","4","1","1","1","4","4","1","1","2","","","Y","","","","","MSN","5","5","5","Y","bom","Y","bom","");



#------------------------------------------
# Table definition for lime_surveys
#------------------------------------------
DROP TABLE IF EXISTS lime_surveys;

CREATE TABLE lime_surveys (
    `sid` int(11) DEFAULT '' NOT NULL,
    `owner_id` int(11) DEFAULT '' NOT NULL,
    `admin` varchar(50),
    `active` char(1) DEFAULT 'N' NOT NULL,
    `expires` date,
    `startdate` date,
    `adminemail` varchar(320),
    `private` char(1),
    `faxto` varchar(20),
    `format` char(1),
    `template` varchar(100) DEFAULT 'default',
    `url` varchar(255),
    `language` varchar(50),
    `additional_languages` varchar(255),
    `datestamp` char(1) DEFAULT 'N',
    `usecookie` char(1) DEFAULT 'N',
    `notification` char(1) DEFAULT '0',
    `allowregister` char(1) DEFAULT 'N',
    `attribute1` varchar(255),
    `attribute2` varchar(255),
    `allowsave` char(1) DEFAULT 'Y',
    `autonumber_start` bigint(11) DEFAULT '0',
    `autoredirect` char(1) DEFAULT 'N',
    `allowprev` char(1) DEFAULT 'Y',
    `printanswers` char(1) DEFAULT 'N',
    `ipaddr` char(1) DEFAULT 'N',
    `useexpiry` char(1) DEFAULT 'N' NOT NULL,
    `usestartdate` char(1) DEFAULT 'N' NOT NULL,
    `refurl` char(1) DEFAULT 'N',
    `datecreated` date,
    `publicstatistics` char(1) DEFAULT 'N',
    `publicgraphs` char(1) DEFAULT 'N',
    `listpublic` char(1) DEFAULT 'N',
    `htmlemail` char(1) DEFAULT 'N',
    `tokenanswerspersistence` char(1) DEFAULT 'N',
    `usecaptcha` char(1) DEFAULT 'N',
    `bounce_email` varchar(320),
   PRIMARY KEY (sid)
);


#------------------------------------------
# Table data for lime_surveys
#------------------------------------------
INSERT INTO lime_surveys VALUES("57346","1","Leandro Coletto Biazon","Y","2009-03-13","2009-03-13","biazon@lsi.usp.br","Y","","G","mint_idea","","pt","pt-BR ","N","N","0","N","","","Y","0","N","Y","N","N","N","N","N","2009-03-13","N","N","N","Y","N","D","biazon@lsi.usp.br");



#------------------------------------------
# Table definition for lime_surveys_languagesettings
#------------------------------------------
DROP TABLE IF EXISTS lime_surveys_languagesettings;

CREATE TABLE lime_surveys_languagesettings (
    `surveyls_survey_id` int(10) unsigned DEFAULT '0' NOT NULL,
    `surveyls_language` varchar(45) DEFAULT 'en' NOT NULL,
    `surveyls_title` varchar(200) DEFAULT '' NOT NULL,
    `surveyls_description` text,
    `surveyls_welcometext` text,
    `surveyls_urldescription` varchar(255),
    `surveyls_email_invite_subj` varchar(255),
    `surveyls_email_invite` text,
    `surveyls_email_remind_subj` varchar(255),
    `surveyls_email_remind` text,
    `surveyls_email_register_subj` varchar(255),
    `surveyls_email_register` text,
    `surveyls_email_confirm_subj` varchar(255),
    `surveyls_email_confirm` text,
   PRIMARY KEY (surveyls_survey_id, surveyls_language)
);


#------------------------------------------
# Table data for lime_surveys_languagesettings
#------------------------------------------
INSERT INTO lime_surveys_languagesettings VALUES("57346","pt","FebraceV: Pesquisa de perfil de usuário","","Sua opini&atilde;o &eacute; muito importante para n&oacute;s! Responda o question&aacute;rio e ajude a fazer uma Febrace melhor!<br />","","Convite para participar no inquérito","Caro (a)  {FIRSTNAME},n<br />Foi convidado a participar num Inquérito.<br /><br />O Inquérito tem o título:<br />\"{SURVEYNAME}\"<br /><br />\"{SURVEYDESCRIPTION}\"<br /><br />Para participar por favor utilize o link abaixo.<br /><br />Com os melhores cumprimentps,<br /><br />{ADMINNAME} ({ADMINEMAIL})<br /><br />----------------------------------------------<br />Utilize o link para preencher o Inquérito<br />{SURVEYURL}","Lembrete para participar no inquérito","Dear {FIRSTNAME}<br /><br />Recently we invited you to participate in a survey.<br /><br />We note that you have not yet completed the survey, and wish to remind you that the survey is still available should you wish to take part.<br /><br />The survey is titled:<br />\"{SURVEYNAME}\"<br /><br />\"{SURVEYDESCRIPTION}\"<br /><br />To participate, please click on the link below.<br /><br />Sincerely,<br /><br />{ADMINNAME} ({ADMINEMAIL})<br /><br />----------------------------------------------<br />Click here to do the survey:<br />{SURVEYURL}","Registo no Inquérito confirmado","Caro (a) {FIRSTNAME},<br /><br />Rgistou-se para participar no Inquérito online  {SURVEYNAME}.<br /><br />Para preencher o Inquérito utilize o linkL:<br /><br />{SURVEYURL}<br /><br />Se tiver alguma questão sobre este Inquérito ou se não fez o registo para participar e considera este e-mail um erro, por favor contacte {ADMINNAME} através do endereço electrónico {ADMINEMAIL}.","Confirmação da resposta completa ao Inquérito","Caro (a) {FIRSTNAME},<br /><br />Este e-mail serve para confirmar a sua resposta ao Inquérito {SURVEYNAME} e que as suas questões foram guardadas. Agradecemos a sua participação.<br /><br />Se tiver outras questões relacionadas com este e-mail, por favor contacte {ADMINNAME} através do endereço electrónico {ADMINEMAIL}.<br /><br />Com os melhores cumprimentos,<br /><br />{ADMINNAME}");
INSERT INTO lime_surveys_languagesettings VALUES("57346","pt-BR","FebraceV: Pesquisa de perfil de usuário","","Sua opini&atilde;o &eacute; muito importante para n&oacute;s! Responda o question&aacute;rio e ajude a fazer uma Febrace melhor!","","Convite para participar do questionário","Caro(a)  {FIRSTNAME},<br />Você foi convidado a participar de uma pesquisa de nome :<br />\"{SURVEYNAME}\"<br /><br />\"{SURVEYDESCRIPTION}\"<br /><br />Para participar, por favor, utilize o link abaixo.<br /><br />Atenciosamente,<br /><br />{ADMINNAME} ({ADMINEMAIL})<br /><br />----------------------------------------------<br />Clique no link para responder o questionário:<br />{SURVEYURL}","Lembrete para participar da pesquisa","Caro(a) {FIRSTNAME}<br /><br />Recentemente, nós lhe convidamos para participar de uma pesquisa. Notamos que ela ainda não foi finalizada e desejamos lembrar-lhe que o questionário ainda está disponível caso deseje completá-lo.<br /><br />O título da pesquisa é:<br />\"{SURVEYNAME}\"<br /><br />\"{SURVEYDESCRIPTION}\"<br /><br />Para participar, por favor utilize o link abaixo.<br /><br />Atenciosamente,<br /><br />{ADMINNAME} ({ADMINEMAIL})<br /><br />----------------------------------------------<br />Clique no link para responder o questionário:<br />{SURVEYURL}","Confirmação de inscrição na pesquisa","Caro(a) {FIRSTNAME},<br /><br />Você ou alguém usando o seu e-mail inscreveu-se para participar da pesquisa on-line de nome {SURVEYNAME}.<br />Para responder o questionário, por favor, clique no link abaixo:<br /><br />{SURVEYURL}<br /><br />Caso haja alguma dúvida ou não tenha sido você a fazer a inscrição, por favor, entre em contato com {ADMINNAME}, através do e-mail {ADMINEMAIL}.","Confirmação de pesquisa concluída","Caro(a) {FIRSTNAME},<br /><br />Este e-mail tem como objetivo confirmar que você finalizou a pesquisa {SURVEYNAME} e que suas respostas foram salvas. Agradecemos sua participação.<br /><br />Caso deseje maiores esclarecimentos, por favor, entre em contato com {ADMINNAME} através do e-mail {ADMINEMAIL}.<br /><br />Atenciosamente,<br /><br />{ADMINNAME}");



#------------------------------------------
# Table definition for lime_surveys_rights
#------------------------------------------
DROP TABLE IF EXISTS lime_surveys_rights;

CREATE TABLE lime_surveys_rights (
    `sid` int(10) unsigned DEFAULT '0' NOT NULL,
    `uid` int(10) unsigned DEFAULT '0' NOT NULL,
    `edit_survey_property` tinyint(1) DEFAULT '0' NOT NULL,
    `define_questions` tinyint(1) DEFAULT '0' NOT NULL,
    `browse_response` tinyint(1) DEFAULT '0' NOT NULL,
    `export` tinyint(1) DEFAULT '0' NOT NULL,
    `delete_survey` tinyint(1) DEFAULT '0' NOT NULL,
    `activate_survey` tinyint(1) DEFAULT '0' NOT NULL,
   PRIMARY KEY (sid, uid)
);


#------------------------------------------
# Table data for lime_surveys_rights
#------------------------------------------
INSERT INTO lime_surveys_rights VALUES("57346","1","1","1","1","1","1","1");



#------------------------------------------
# Table definition for lime_templates
#------------------------------------------
DROP TABLE IF EXISTS lime_templates;

CREATE TABLE lime_templates (
    `folder` varchar(255) DEFAULT '' NOT NULL,
    `creator` int(11) DEFAULT '' NOT NULL,
   PRIMARY KEY (folder)
);


#------------------------------------------
# Table data for lime_templates
#------------------------------------------



#------------------------------------------
# Table definition for lime_templates_rights
#------------------------------------------
DROP TABLE IF EXISTS lime_templates_rights;

CREATE TABLE lime_templates_rights (
    `uid` int(11) DEFAULT '' NOT NULL,
    `folder` varchar(255) DEFAULT '' NOT NULL,
    `use` int(1) DEFAULT '' NOT NULL,
   PRIMARY KEY (uid, folder)
);


#------------------------------------------
# Table data for lime_templates_rights
#------------------------------------------



#------------------------------------------
# Table definition for lime_user_groups
#------------------------------------------
DROP TABLE IF EXISTS lime_user_groups;

CREATE TABLE lime_user_groups (
    `ugid` int(10) unsigned NOT NULL auto_increment,
    `name` varchar(20) DEFAULT '' NOT NULL,
    `description` text DEFAULT '' NOT NULL,
    `owner_id` int(10) unsigned DEFAULT '' NOT NULL,
   PRIMARY KEY (ugid),
   UNIQUE name (name)
);


#------------------------------------------
# Table data for lime_user_groups
#------------------------------------------



#------------------------------------------
# Table definition for lime_user_in_groups
#------------------------------------------
DROP TABLE IF EXISTS lime_user_in_groups;

CREATE TABLE lime_user_in_groups (
    `ugid` int(10) unsigned DEFAULT '' NOT NULL,
    `uid` int(10) unsigned DEFAULT '' NOT NULL,
   KEY user_in_groups_idx1 (ugid, uid)
);


#------------------------------------------
# Table data for lime_user_in_groups
#------------------------------------------



#------------------------------------------
# Table definition for lime_users
#------------------------------------------
DROP TABLE IF EXISTS lime_users;

CREATE TABLE lime_users (
    `uid` int(11) NOT NULL auto_increment,
    `users_name` varchar(64) DEFAULT '' NOT NULL,
    `password` blob DEFAULT '' NOT NULL,
    `full_name` varchar(50) DEFAULT '' NOT NULL,
    `parent_id` int(10) unsigned DEFAULT '' NOT NULL,
    `lang` varchar(20),
    `email` varchar(320),
    `create_survey` tinyint(1) DEFAULT '0' NOT NULL,
    `create_user` tinyint(1) DEFAULT '0' NOT NULL,
    `delete_user` tinyint(1) DEFAULT '0' NOT NULL,
    `superadmin` tinyint(1) DEFAULT '0' NOT NULL,
    `configurator` tinyint(1) DEFAULT '0' NOT NULL,
    `manage_template` tinyint(1) DEFAULT '0' NOT NULL,
    `manage_label` tinyint(1) DEFAULT '0' NOT NULL,
    `htmleditormode` varchar(7) DEFAULT 'default',
   PRIMARY KEY (uid),
   UNIQUE users_name (users_name)
);


#------------------------------------------
# Table data for lime_users
#------------------------------------------
INSERT INTO lime_users VALUES("1","admin","b7fa5329fe3f623812f8efd89ee76f826170171dc996ccf7f2b5f30c6ccba0d7","febraceV","0","en","febracev@gmail.com","1","1","1","1","1","1","1","default");



