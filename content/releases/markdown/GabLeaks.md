---
title: Gableaks
lastmod: '2023-12-02'
categories:
- Corporate
- Fascist
- Hack
- 'Limited

  Distribution'
info:
  dataset:
    country: ''
    type: ''
    source: ''
    size: ''
  download:
    magnet: ''
    torrent: ''
    direct: ''
  references: []
  notes: ''
---



From Distributed Denial of Secrets

---
RELEASE

**GabLeaks**
70 GB of Gab public posts, private posts, user profiles, hashed passwords for users, DMs, and plaintext passwords for groups.
DATASET DETAILS
**COUNTRIES** International
**TYPE** Hack
**SOURCE** JaXpArO (they/them) & My Little Anonymous Revival Project
**FILE SIZE** 70 GB
DOWNLOADS ([How to Request Access](Contact.html#Request_Access "Contact"))
MORE
**REFERENCES**
[Wired](https://www.wired.com/story/gab-hack-data-breach-ddosecrets/)
**EDITOR NOTES**
[Gab response to query from Wired](https://news.gab.com/2021/02/26/alleged-data-breach-26-february-2021/)
---

The Gab data is an important but complicated dataset. In addition to
being a corpus of the public discourse on Gab, it includes every private
post and many private messages, as well.

In a simpler or more ordinary times, it'd be an important sociological
resource. In 2021, it's also a record of the culture and the exact
statements surrounding not only an increase in extremist views and
actions, but an attempted coup.

# Contents

- [[1] [Limited
Distribution]](GabLeaks.html#Limited_Distribution)
- [[2] [Description]](GabLeaks.html#Description)
- [[3] [Analysis
Support]](GabLeaks.html#Analysis_Support)
- [[4] [Gab Scrapes
supplement]](GabLeaks.html#Gab_Scrapes_supplement)
- [[5] [Gab By the
Numbers]](GabLeaks.html#Gab_By_the_Numbers)
- [[6] [Aftermath]](GabLeaks.html#Aftermath)
- [[7] [Research]](GabLeaks.html#Research)

## Limited Distribution

While the dataset is extremely important to understanding recent and
current events, as well as being a valuable historical archive, it also
represents privacy concerns. Due to these concerns, along with presence
of passwords and other PII, this dataset is currently only being offered
to journalists and researchers. ([How to Request
Access](Contact.html#Request_Access "Contact"))

## Description

70 GB of Gab public posts, private posts, user profiles, hashed
passwords for users, DMs, and plaintext passwords for groups in SQL
format, along with over 70,000 messages in more than 19,000 chats with
over 15,000 users in plaintext format.

## Analysis Support

This dataset consists of a Postgresql database dump. However, three of
the tables have a "data" column containing JSON, where most of the
features of interest are saved. To make analysis easier, DDoSecrets has
released [unpacking
software](https://github.com/ddosecrets/gableaks-analysis) which will create expanded tables where the
contents of the JSON are in independent columns.

## Gab Scrapes supplement

As a supplement, a series of scrapes of Gab throughout 2017 and 2018 are
being made available. The scrapes are in the same format as GabLeaks and
began in Gab's beta, and contain posts which were later deleted. As
they were all originally public posts and contain no private
information, we are making them available as-is to the public as well as
to journalists and researchers. The scrapes can be downloaded using [the
torrent file](../images/e/eb/Gab_Data.zip.torrent) or the [magnet
link](magnet:?xt=urn:btih:29bb586e19eaac22e0d1ea2fd45afd55789c6ca4&dn=Gab+Data.zip&tr=http://tracker.opentrackr.org:1337/announce&tr=udp://tracker.leechers-paradise.org:6969/announce&tr=udp://exodus.desync.com:6969/announce&tr=udp://tracker.coppersurfer.tk:6969/announce).

## Gab By the Numbers

Colleagues at [SMAT](https://smat-app.com/) performed an analysis of the Gab data. The following
graphics (click to enlarge) represent some of their initial findings
about the use of Gab and the platform's growth over time with the
effect of the Parler shutdown and the events of January 6 in Washington
D.C..

- [![Gab membership by
SMAT.png](../images/thumb/0/04/Gab_membership_by_SMAT.png/120px-Gab_membership_by_SMAT.png)](./File:Gab_membership_by_SMAT.png.html)

- [![Gab users by
SMAT.png](../images/thumb/3/37/Gab_users_by_SMAT.png/120px-Gab_users_by_SMAT.png)](./File:Gab_users_by_SMAT.png.html)

- [![Gab followers by
SMAT.png](../images/thumb/4/49/Gab_followers_by_SMAT.png/120px-Gab_followers_by_SMAT.png)](./File:Gab_followers_by_SMAT.png.html)

- [![Gab group by
SMAT.png](../images/thumb/c/c0/Gab_group_by_SMAT.png/120px-Gab_group_by_SMAT.png)](./File:Gab_group_by_SMAT.png.html)

- [![Gab posts-1 by
SMAT.png](../images/thumb/4/4c/Gab_posts-1_by_SMAT.png/120px-Gab_posts-1_by_SMAT.png)](./File:Gab_posts-1_by_SMAT.png.html)

- [![Gab posts-2 by
SMAT.png](../images/thumb/3/30/Gab_posts-2_by_SMAT.png/120px-Gab_posts-2_by_SMAT.png)](./File:Gab_posts-2_by_SMAT.png.html)

## Aftermath

Distributed Denial of Secrets provided a pre-release copy of the data to
a reporter with Wired. As is standard practice, the reporter reached out
to Gab for comment. In response, Gab posted a [blog
entry](https://web.archive.org/web/20210227011738/https://news.gab.com/2021/02/26/alleged-data-breach-26-february-2021/) stating that "reporters, who write for a
publication that has written many hit pieces on Gab in the past, are in
direct contact with the hacker and are essentially assisting the hacker
in his efforts to smear our business and hurt you, our users."

These accusations are entirely false. Wired's only interest was in
reporting on the SQL injection and resulting breach of Gab, as well as
Distributed Denial of Secrets' decision to provide journalists and
researchers with copies of the data. To our knowledge, no one at Wired
has had contact with the source - JaXpArO (they/them) & My Little
Anonymous Revival Project - who entrusted us with both the data and
their safety.

The following day, [Gab CEO Andrew Torba made a
post](https://twitter.com/NatSecGeek/status/1366129331638919170) which indirectly referred to Distributed Denial of
Secrets and called members of the group "mentally ill [t-slur] demon
hackers," accusing us of "attacking Gab right now" before claiming
that both his and Trump's Gab accounts were compromised, without
specifying how or in what way.

The post also accused Distributed Denial of Secrets of targeting "law
enforcement and their family members last summer." Like other claims
made by Torba, this is false. [BlueLeaks](BlueLeaks.html "BlueLeaks")
did not "target" law enforcement, it published documents revealing the
activities of law enforcement, including wrongdoing, which led to
[numerous](https://medium.com/@netlorax/what-is-blueleaks-ddosecrets-fusion-centers-black-lives-matters-ba3281f586d) news
[reports](https://theintercept.com/collections/blueleaks/). Family of law enforcement were unaffected.
[Documents](https://www.muckrock.com/foi/multirequest/blueleaks-85828/) obtained through the Freedom of Information Act
[confirm](https://web.archive.org/web/20200818194703/businessinsider.com/history-of-blueleaks-police-documents-emma-best-ddos-2020-8) that the names, phone numbers and addresses
exposed were official work ones similar to what can be found on many law
enforcement agency's websites and public directories.

Distributed Denial of Secrets had no role in the compromise of Gab or
any other service, and did not crack any password hashes, use any of the
plaintext group passwords, or otherwise compromise anyone's account.
Early in the review process, we made the decision to limit the
distribution of the dataset to both protect the privacy of innocent Gab
users and the integrity of their accounts and private groups.

## Research

[Swindon council official exposed as punk-rocker
neo-Nazi](https://www.thejc.com/news/news/swindon-council-official-exposed-as-punk-rocker-neo-nazi-6drM1yvcURb15Eq4CiTk60) (The Jewish Chronicle)[Gabufacturing dissent: An
in-depth analysis of
Gab](https://stacks.stanford.edu/file/druid:ns280ry2029/20220601_gabufacturing_dissent.pdf) (Stanford Internet Observatory)

[Gab's CEO courted prominent anti-Semites for his
site](https://www.motherjones.com/politics/2021/03/andrew-torba-anti-semites/) (Mother Jones)

[Gab: hack gives unprecedented look into platform used by far
right](https://www.theguardian.com/world/2021/mar/11/gab-hack-neo-nazis-qanon-conspiracy-theories) (The Guardian)

Emma Best and Xan North [talk to the 2600
podcast](https://www.2600.com/hook/10-03-2021) on 10/03/2021 (Off The Hook)

[Gab hack shows QAnon and antifa conspiracy theories abound in private
messages](https://the-beacon.ie/2021/03/16/gab-hack-shows-qanon-and-anti-fa-conspiracy-theories-abound-in-private-messages/) (The Beacon)

[Inside Gab, the online safe space for far-right
extremists](https://theintercept.com/2021/03/15/gab-hack-donald-trump-parler-extremists/) (The Intercept)

[Donald Trump's Gab account uses an email address belonging to the
extremist platform's
CEO](https://theintercept.com/2021/03/03/gab-donald-trump-email-ceo/) (The Intercept)

[Transparency collective publishes 70 gigabytes of data hacked from
right-wing social
media](https://nyunews.com/news/2021/03/07/social-media-site-gab-hacked-and-data-published/) (Washington Square News)

[Rookie coding mistake prior to Gab hack came from site's
CTO](https://arstechnica.com/gadgets/2021/03/rookie-coding-mistake-prior-to-gab-hack-came-from-sites-cto/) (Ars Technica)

[Trump's is one of 15,000 Gab accounts that just got
hacked](https://arstechnica.com/information-technology/2021/03/gab-the-far-right-website-has-been-hacked-and-70gb-of-data-leaked/) (Ars Technica)

[Far-Right Platform Gab Has Been Hacked---Including Private
Data](https://www.wired.com/story/gab-hack-data-breach-ddosecrets/) (Wired)

[Gab blames reported hack of 40 million posts on 'demon
hackers'](https://www.theverge.com/2021/3/1/22307013/gab-hack-data-ceo-demon-hackers) (The Verge)

[Gift of the Gab? CEO of Alt-right Social Network Publishes Tirade
Following Data
Breach](https://digit.fyi/gab-ceo-of-alt-right-social-network-unleashes-tirade-following-data-breach/) (Digit)

[Hackers have scored a major hit on right-wing platform
Gab](https://www.rawstory.com/gab-hacked/) (Raw Story)

[Hackers break into far-right social network Gab, collect a slew of
private
data](https://mashable.com/article/gab-hacked-ddosecrets-gableaks/) (Mashable)

['Pretty-much everything on Gab': Leaks publisher offers private data of
'alt-tech Twitter' users to researchers of
'neo-Nazis'](https://www.rt.com/usa/516848-gab-user-data-hacked/) (Russia Today)

[Hackean la red social de extrema derecha Gab revelando 70 GB de
información
personal](https://www.elespanol.com/omicrono/software/20210301/hackean-extrema-gab-revelando-gb-informacion-personal/562694075_0.html) (El Español)

[Im Netzwerk der Judenfeinde und
Corona-Leugner](https://www.welt.de/politik/deutschland/plus227884019/Rechte-Plattform-Gab-Im-Netzwerk-der-Judenfeinde-und-Corona-Leugner.html) (Welt)

[Rechtsextreme Plattform Gab gehackt, sensible Nutzerdaten
gestohlen](https://www.derstandard.de/story/2000124557315/rechtsextreme-plattform-gab-gehackt-sensible-nutzerdaten-gestohlen) (der Standard)

[New wave of 'hacktivism' adds twist to cybersecurity
woes](https://www.reuters.com/article/idUSKBN2BH3HJ) (Reuters)

[Oh, that's a shame: Bigot-friendly social network Gab was
hacked](https://aux.avclub.com/oh-that-s-a-shame-bigot-friendly-social-network-gab-w-1846388340) (The AV Club)

[Gab has been
breached](https://www.troyhunt.com/gab-has-been-breached/) (Troy Hunt/Have I Been Pwned)

Retrieved from
"[https://ddosecrets.com/index.php?title=GabLeaks&oldid=2691](../index.php%3Ftitle=GabLeaks&oldid=2691.html)"

[Categories](./Special:Categories.html "Special:Categories"):

- [Corporate](./Category:Corporate.html "Category:Corporate")
- [Fascist](./Category:Fascist.html "Category:Fascist")
- [Hack](./Category:Hack.html "Category:Hack")
- [Limited
Distribution](./Category:Limited_Distribution.html "Category:Limited Distribution")
