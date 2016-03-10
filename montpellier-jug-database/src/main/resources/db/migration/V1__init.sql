--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: jug; Type: SCHEMA; Schema: -; Owner: test
--

SET search_path = jug, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: answer; Type: TABLE; Schema: jug; Owner: test; Tablespace:
--

CREATE TABLE answer (
  id bigint NOT NULL,
  answer text NOT NULL,
  votes bigint,
  poll_id bigint NOT NULL
);

--
-- Name: answer_id_seq; Type: SEQUENCE; Schema: jug; Owner: test
--

CREATE SEQUENCE answer_id_seq
START WITH 1
INCREMENT BY 1
NO MINVALUE
NO MAXVALUE
CACHE 1;

--
-- Name: answer_id_seq; Type: SEQUENCE OWNED BY; Schema: jug; Owner: test
--

ALTER SEQUENCE answer_id_seq OWNED BY answer.id;


--
-- Name: event; Type: TABLE; Schema: jug; Owner: test; Tablespace:
--

CREATE TABLE event (
  id bigint NOT NULL,
  capacity integer NOT NULL,
  date timestamp without time zone,
  description text,
  location text,
  map text,
  open boolean NOT NULL,
  registrationurl text,
  report text,
  title text,
  partner_id bigint
);

--
-- Name: event_id_seq; Type: SEQUENCE; Schema: jug; Owner: test
--

CREATE SEQUENCE event_id_seq
START WITH 1
INCREMENT BY 1
NO MINVALUE
NO MAXVALUE
CACHE 1;

--
-- Name: event_id_seq; Type: SEQUENCE OWNED BY; Schema: jug; Owner: test
--

ALTER SEQUENCE event_id_seq OWNED BY event.id;


--
-- Name: eventpartner; Type: TABLE; Schema: jug; Owner: test; Tablespace:
--

CREATE TABLE eventpartner (
  id bigint NOT NULL,
  description text,
  logourl text,
  name text,
  url text
);

--
-- Name: eventpartner_id_seq; Type: SEQUENCE; Schema: jug; Owner: test
--

CREATE SEQUENCE eventpartner_id_seq
START WITH 1
INCREMENT BY 1
NO MINVALUE
NO MAXVALUE
CACHE 1;

--
-- Name: eventpartner_id_seq; Type: SEQUENCE OWNED BY; Schema: jug; Owner: test
--

ALTER SEQUENCE eventpartner_id_seq OWNED BY eventpartner.id;


--
-- Name: juguser; Type: TABLE; Schema: jug; Owner: test; Tablespace:
--

CREATE TABLE juguser (
  id bigint NOT NULL,
  email text
);
--
-- Name: juguser_id_seq; Type: SEQUENCE; Schema: jug; Owner: test
--

CREATE SEQUENCE juguser_id_seq
START WITH 1
INCREMENT BY 1
NO MINVALUE
NO MAXVALUE
CACHE 1;

--
-- Name: juguser_id_seq; Type: SEQUENCE OWNED BY; Schema: jug; Owner: test
--

ALTER SEQUENCE juguser_id_seq OWNED BY juguser.id;


--
-- Name: news; Type: TABLE; Schema: jug; Owner: test; Tablespace:
--

CREATE TABLE news (
  id bigint NOT NULL,
  comments boolean NOT NULL,
  content text,
  date timestamp without time zone,
  title text
);

--
-- Name: news_id_seq; Type: SEQUENCE; Schema: jug; Owner: test
--

CREATE SEQUENCE news_id_seq
START WITH 1
INCREMENT BY 1
NO MINVALUE
NO MAXVALUE
CACHE 1;

--
-- Name: news_id_seq; Type: SEQUENCE OWNED BY; Schema: jug; Owner: test
--

ALTER SEQUENCE news_id_seq OWNED BY news.id;


--
-- Name: participation; Type: TABLE; Schema: jug; Owner: test; Tablespace:
--

CREATE TABLE participation (
  id bigint NOT NULL,
  code text,
  status integer,
  event_id bigint,
  juguser_id bigint
);

--
-- Name: participation_id_seq; Type: SEQUENCE; Schema: jug; Owner: test
--

CREATE SEQUENCE participation_id_seq
START WITH 1
INCREMENT BY 1
NO MINVALUE
NO MAXVALUE
CACHE 1;

--
-- Name: participation_id_seq; Type: SEQUENCE OWNED BY; Schema: jug; Owner: test
--

ALTER SEQUENCE participation_id_seq OWNED BY participation.id;


--
-- Name: poll; Type: TABLE; Schema: jug; Owner: test; Tablespace:
--

CREATE TABLE poll (
  id bigint NOT NULL,
  question text NOT NULL,
  expirydate timestamp without time zone,
  visible boolean
);

--
-- Name: poll_id_seq; Type: SEQUENCE; Schema: jug; Owner: test
--

CREATE SEQUENCE poll_id_seq
START WITH 1
INCREMENT BY 1
NO MINVALUE
NO MAXVALUE
CACHE 1;

--
-- Name: poll_id_seq; Type: SEQUENCE OWNED BY; Schema: jug; Owner: test
--

ALTER SEQUENCE poll_id_seq OWNED BY poll.id;

--
-- Name: speaker; Type: TABLE; Schema: jug; Owner: test; Tablespace:
--

CREATE TABLE speaker (
  id bigint NOT NULL,
  activity text,
  company text,
  description text,
  fullname text,
  jugmember boolean,
  memberfct text,
  photourl text,
  url text,
  email text,
  personalurl text
);

--
-- Name: speaker_id_seq; Type: SEQUENCE; Schema: jug; Owner: test
--

CREATE SEQUENCE speaker_id_seq
START WITH 1
INCREMENT BY 1
NO MINVALUE
NO MAXVALUE
CACHE 1;

--
-- Name: speaker_id_seq; Type: SEQUENCE OWNED BY; Schema: jug; Owner: test
--

ALTER SEQUENCE speaker_id_seq OWNED BY speaker.id;


--
-- Name: tag; Type: TABLE; Schema: jug; Owner: test; Tablespace:
--

CREATE TABLE tag (
  id bigint NOT NULL,
  name text
);

--
-- Name: tag_id_seq; Type: SEQUENCE; Schema: jug; Owner: test
--

CREATE SEQUENCE tag_id_seq
START WITH 1
INCREMENT BY 1
NO MINVALUE
NO MAXVALUE
CACHE 1;

--
-- Name: tag_id_seq; Type: SEQUENCE OWNED BY; Schema: jug; Owner: test
--

ALTER SEQUENCE tag_id_seq OWNED BY tag.id;


--
-- Name: talk; Type: TABLE; Schema: jug; Owner: test; Tablespace:
--

CREATE TABLE talk (
  id bigint NOT NULL,
  orderinevent integer NOT NULL,
  teaser text,
  datetime text,
  title text,
  event_id bigint,
  speaker_id bigint,
  links text[]
);

--
-- Name: talk_id_seq; Type: SEQUENCE; Schema: jug; Owner: test
--

CREATE SEQUENCE talk_id_seq
START WITH 1
INCREMENT BY 1
NO MINVALUE
NO MAXVALUE
CACHE 1;

--
-- Name: talk_id_seq; Type: SEQUENCE OWNED BY; Schema: jug; Owner: test
--

ALTER SEQUENCE talk_id_seq OWNED BY talk.id;


--
-- Name: talk_tag; Type: TABLE; Schema: jug; Owner: test; Tablespace:
--

CREATE TABLE talk_tag (
  talk_id bigint NOT NULL,
  tags_id bigint NOT NULL
);

--
-- Name: yearpartner; Type: TABLE; Schema: jug; Owner: test; Tablespace:
--

CREATE TABLE yearpartner (
  id bigint NOT NULL,
  description text,
  logourl text,
  name text,
  startdate timestamp without time zone,
  stopdate timestamp without time zone,
  url text
);

--
-- Name: yearpartner_id_seq; Type: SEQUENCE; Schema: jug;
--

CREATE SEQUENCE yearpartner_id_seq
START WITH 1
INCREMENT BY 1
NO MINVALUE
NO MAXVALUE
CACHE 1;

--
-- Name: yearpartner_id_seq; Type: SEQUENCE OWNED BY; Schema: jug;
--

ALTER SEQUENCE yearpartner_id_seq OWNED BY yearpartner.id;


--
-- Name: id; Type: DEFAULT; Schema: jug;
--

ALTER TABLE ONLY answer ALTER COLUMN id SET DEFAULT nextval('answer_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: jug; Owner: test
--

ALTER TABLE ONLY event ALTER COLUMN id SET DEFAULT nextval('event_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: jug; Owner: test
--

ALTER TABLE ONLY eventpartner ALTER COLUMN id SET DEFAULT nextval('eventpartner_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: jug; Owner: test
--

ALTER TABLE ONLY juguser ALTER COLUMN id SET DEFAULT nextval('juguser_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: jug; Owner: test
--

ALTER TABLE ONLY news ALTER COLUMN id SET DEFAULT nextval('news_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: jug; Owner: test
--

ALTER TABLE ONLY participation ALTER COLUMN id SET DEFAULT nextval('participation_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: jug; Owner: test
--

ALTER TABLE ONLY poll ALTER COLUMN id SET DEFAULT nextval('poll_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: jug; Owner: test
--

ALTER TABLE ONLY speaker ALTER COLUMN id SET DEFAULT nextval('speaker_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: jug; Owner: test
--

ALTER TABLE ONLY tag ALTER COLUMN id SET DEFAULT nextval('tag_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: jug; Owner: test
--

ALTER TABLE ONLY talk ALTER COLUMN id SET DEFAULT nextval('talk_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: jug; Owner: test
--

ALTER TABLE ONLY yearpartner ALTER COLUMN id SET DEFAULT nextval('yearpartner_id_seq'::regclass);


--
-- Name: answer_pkey; Type: CONSTRAINT; Schema: jug; Owner: test; Tablespace:
--

ALTER TABLE ONLY answer
ADD CONSTRAINT answer_pkey PRIMARY KEY (id);


--
-- Name: event_pkey; Type: CONSTRAINT; Schema: jug; Owner: test; Tablespace:
--

ALTER TABLE ONLY event
ADD CONSTRAINT event_pkey PRIMARY KEY (id);


--
-- Name: eventpartner_pkey; Type: CONSTRAINT; Schema: jug; Owner: test; Tablespace:
--

ALTER TABLE ONLY eventpartner
ADD CONSTRAINT eventpartner_pkey PRIMARY KEY (id);


--
-- Name: juguser_pkey; Type: CONSTRAINT; Schema: jug; Owner: test; Tablespace:
--

ALTER TABLE ONLY juguser
ADD CONSTRAINT juguser_pkey PRIMARY KEY (id);


--
-- Name: news_pkey; Type: CONSTRAINT; Schema: jug; Owner: test; Tablespace:
--

ALTER TABLE ONLY news
ADD CONSTRAINT news_pkey PRIMARY KEY (id);


--
-- Name: participation_pkey; Type: CONSTRAINT; Schema: jug; Owner: test; Tablespace:
--

ALTER TABLE ONLY participation
ADD CONSTRAINT participation_pkey PRIMARY KEY (id);


--
-- Name: poll_pkey; Type: CONSTRAINT; Schema: jug; Owner: test; Tablespace:
--

ALTER TABLE ONLY poll
ADD CONSTRAINT poll_pkey PRIMARY KEY (id);


--
-- Name: speaker_pkey; Type: CONSTRAINT; Schema: jug; Owner: test; Tablespace:
--

ALTER TABLE ONLY speaker
ADD CONSTRAINT speaker_pkey PRIMARY KEY (id);


--
-- Name: tag_pkey; Type: CONSTRAINT; Schema: jug; Owner: test; Tablespace:
--

ALTER TABLE ONLY tag
ADD CONSTRAINT tag_pkey PRIMARY KEY (id);


--
-- Name: talk_pkey; Type: CONSTRAINT; Schema: jug; Owner: test; Tablespace:
--

ALTER TABLE ONLY talk
ADD CONSTRAINT talk_pkey PRIMARY KEY (id);


--
-- Name: talk_tag_pkey; Type: CONSTRAINT; Schema: jug; Owner: test; Tablespace:
--

ALTER TABLE ONLY talk_tag
ADD CONSTRAINT talk_tag_pkey PRIMARY KEY (talk_id, tags_id);


--
-- Name: yearpartner_pkey; Type: CONSTRAINT; Schema: jug; Owner: test; Tablespace:
--

ALTER TABLE ONLY yearpartner
ADD CONSTRAINT yearpartner_pkey PRIMARY KEY (id);


--
-- Name: event_partner_id_fk; Type: FK CONSTRAINT; Schema: jug; Owner: test
--

ALTER TABLE ONLY event
ADD CONSTRAINT event_partner_id_fk FOREIGN KEY (partner_id) REFERENCES eventpartner(id);


--
-- Name: participation_event_id_fk; Type: FK CONSTRAINT; Schema: jug; Owner: test
--

ALTER TABLE ONLY participation
ADD CONSTRAINT participation_event_id_fk FOREIGN KEY (event_id) REFERENCES event(id);


--
-- Name: participation_juguser_id_fk; Type: FK CONSTRAINT; Schema: jug; Owner: test
--

ALTER TABLE ONLY participation
ADD CONSTRAINT participation_juguser_id_fk FOREIGN KEY (juguser_id) REFERENCES juguser(id);


--
-- Name: poll_answer; Type: FK CONSTRAINT; Schema: jug; Owner: test
--

ALTER TABLE ONLY answer
ADD CONSTRAINT poll_answer FOREIGN KEY (poll_id) REFERENCES poll(id);


--
-- Name: talk_event_id_fk; Type: FK CONSTRAINT; Schema: jug; Owner: test
--

ALTER TABLE ONLY talk
ADD CONSTRAINT talk_event_id_fk FOREIGN KEY (event_id) REFERENCES event(id);


--
-- Name: talk_speaker_id_fk; Type: FK CONSTRAINT; Schema: jug; Owner: test
--

ALTER TABLE ONLY talk
ADD CONSTRAINT talk_speaker_id_fk FOREIGN KEY (speaker_id) REFERENCES speaker(id);


--
-- Name: talk_tag_tags_id_fk; Type: FK CONSTRAINT; Schema: jug; Owner: test
--

ALTER TABLE ONLY talk_tag
ADD CONSTRAINT talk_tag_tags_id_fk FOREIGN KEY (tags_id) REFERENCES tag(id);


--
-- Name: talk_tag_talk_id_fk; Type: FK CONSTRAINT; Schema: jug; Owner: test
--

ALTER TABLE ONLY talk_tag
ADD CONSTRAINT talk_tag_talk_id_fk FOREIGN KEY (talk_id) REFERENCES talk(id);



--
-- PostgreSQL database dump complete
--

