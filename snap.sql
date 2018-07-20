ALTER DATABASE jmiller156 CHARACTER SET utf8 COLLATE utf8_unicode_ci;

DROP TABLE IF EXISTS commentsnap;

CREATE TABLE commentSnap(
	commentId BINARY(16) NOT NULL,
	commentDateTime TIMESTAMP(6) NOT NULL,
	commentText VARCHAR(128),
	PRIMARY KEY(commentId)
);

INSERT INTO commentSnap (commentId, commentDateTime, commentText)
VALUES (UNHEX(REPLACE("8b38082e-2a87-4e93-b00f-bb0a7434ff2d","-", "")), "2018-07-20 08:25:03" , "It is Friday" );


INSERT INTO commentSnap (commentId, commentDateTime, commentText)
VALUES (UNHEX(REPLACE("0f1b6436-7356-4c8b-ad56-5a560234c229","-", "")), "2018-07-20 08:35:03" , "Where is the bathroom?" );