CREATE SCHEMA stackexchange;
SET search_path TO stackexchange;

CREATE TABLE Users (
  id                SERIAL PRIMARY KEY,
  age               INTEGER,
  aboutMe           TEXT,
  location          VARCHAR(200),
  accountId         INTEGER NOT NULL,
  reputation        INTEGER NOT NULL,
  websiteUrl        VARCHAR(200),
  displayName       VARCHAR(100),
  profileImageUrl   VARCHAR(200),
  views             INTEGER,
  upVotes           INTEGER,
  downVotes         INTEGER,
  creationDate      DATE NOT NULL,
  lastAccessDate    DATE
);

CREATE TABLE Posts (
  id                    SERIAL PRIMARY KEY,
  body                  TEXT NOT NULL,
  tags                  TEXT,
  score                 INTEGER,
  title                 TEXT,
  parentID              INTEGER REFERENCES posts(id),
  viewCount             INTEGER,
  postTypeId            INTEGER,
  closedDate            DATE,
  answerCount           INTEGER,
  ownerUserID           INTEGER REFERENCES users(id),
  commentCount          INTEGER,
  lastEditDate          DATE,
  creationDate          DATE,
  favoriteCount         INTEGER,
  lastActivityDate      DATE,
  lastEditorUserId      INTEGER REFERENCES users(id),
  acceptedAnswerId      INTEGER,
  ownerDisplayName      VARCHAR(100),
  communityOwnedDate    DATE,
  lastEditorDisplayName VARCHAR(100)
);

CREATE TABLE Comments (
  id              SERIAL PRIMARY KEY,
  text            TEXT,
  score           INTEGER,
  userId          INTEGER REFERENCES users(id),
  postId          INTEGER REFERENCES posts(id),
  creationDate    DATE NOT NULL,
  userDisplayName VARCHAR(100)
);

CREATE TABLE Badges (
  id        SERIAL PRIMARY KEY,
  name      TEXT NOT NULL,
  date      DATE NOT NULL,
  userId    INTEGER NOT NULL REFERENCES users(id)
);

CREATE TABLE Tags (
  id              SERIAL PRIMARY KEY,
  count           INTEGER NOT NULL,
  tagName         VARCHAR(200) NOT NULL,
  WikiPostId      INTEGER,
  excerptPostId   INTEGER REFERENCES posts(id)
);

CREATE TABLE Votes (
  id            SERIAL PRIMARY KEY,
  userId        INTEGER REFERENCES users(id),
  postId        INTEGER,
  voteTypeId    INTEGER,
  bountyAmount  INTEGER,
  creationDate  DATE NOT NULL
);

CREATE TABLE PostLinks (
  id              SERIAL PRIMARY KEY,
  postId          INTEGER,
  linkTypeId      INTEGER,
  creationDate    DATE NOT NULL,
  relatedPostId   INTEGER
);

CREATE TABLE PostHistory (
  id                SERIAL PRIMARY KEY,
  text              TEXT,
  userId            INTEGER,
  postId            INTEGER,
  comment           TEXT,
  creationDate      DATE NOT NULL,
  revisionGUID      VARCHAR(50),
  userDisplayName   VARCHAR(100),
  postHistoryTypeId INTEGER
);
