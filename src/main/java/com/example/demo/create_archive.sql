create table archive (
                         archive_id text NOT NULL,
                         archive_history JSON,
                         primary key (archive_id)
);