# VBB public transport data

This repo is an archive of [VBB (Berlin/Brandenburg transit authority)](https://vbb.de)'s [GTFS feed](https://daten.berlin.de/datensaetze/vbb-fahrplandaten-gtfs). It contains both historical versions, as well as the latest version.

## HTTP mirror

You can **download the feeds from [`vbb-gtfs.jannisr.de`](https://vbb-gtfs.jannisr.de/)**, which is an HTTP mirror of this Git repository.

Using it has several benefits over the [official zipped GTFS feed](https://daten.berlin.de/datensaetze/vbb-fahrplandaten-gtfs):
- My mirror contains individual files, in case you're only interested in some aspects of the feed.
- It has [CORS](https://enable-cors.org) enabled, so you can process the data directly using browser-based tools. (Please don't cause excessive traffic. Get in touch with me if you have questions.)
- It can deliver the files gzipped, saving traffic, time & energy.

For example, to download the latest version of the feed into a directory `gtfs`, use [wget](https://en.wikipedia.org/wiki/Wget) with this command:

```bash
wget -r --no-parent --no-directories -P gtfs -N \
	--compression auto -R .csv.gz \
	'https://vbb-gtfs.jannisr.de/latest/'
```

## Git LFS

[Git LFS](https://git-lfs.com) is an extension for Git that allows storing "the content" large files outside of the Git repository, while keeping the files and their revisions within Git's file index.

The GTFS files in this repo are stored via Git LFS, so in order to obtain them, you need to [install Git LFS](https://docs.github.com/en/repositories/working-with-files/managing-large-files/installing-git-large-file-storage) before pulling.
