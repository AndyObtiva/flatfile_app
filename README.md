# Flatfile App

This is a web application prototype that demoes how to use the https://flatfile.com csv/xlsx import service.

It supports [Embed](https://flatfile.com/docs/getting-started/) and [Portal](https://flatfile.com/developers/) Imports.

[Embed](https://flatfile.com/docs/getting-started/) is more basic. [Portal](https://flatfile.com/developers/) is more advanced and supports field alternates.

Examples:
1. [Embed](https://flatfile.com/docs/getting-started/) Import of [example1.xlsx](/example1.xlsx) results in [example1.json](/example1.json)
2. [Portal](https://flatfile.com/developers/) Import of [example2.csv](/example2.csv) results in [example2.json](/example2.json)
3. [Portal](https://flatfile.com/developers/) Import (Bulk) of [example3.csv](/example3.csv) 20,000 rows

Themes are supported by [flatfile](https://flatfile.com) (example code is included in this app, but disabled):

https://flatfile.com/developers/javascript/themes/

Internationalization (i18n) is supported by [flatfile](https://flatfile.com) too:

https://flatfile.com/developers/guides/custom-portal-text/

## Setup

Ensure ruby is installed.

Go into project directory.

Run:

```
bundle
```

Finally, run:

```
ruby main.rb
```

And, visit:

http://localhost:4242

## Screenshots

### Embed Import

![home](/screenshots/flatfile_app_home.png)
![embed 1](/screenshots/flatfile_app_embed_import_screen1.png)
![embed 2](/screenshots/flatfile_app_embed_import_screen2.png)
![embed 3](/screenshots/flatfile_app_embed_import_screen3.png)
![embed 4](/screenshots/flatfile_app_embed_import_screen4.png)
![embed 5](/screenshots/flatfile_app_embed_import_screen5.png)
![embed 5](/screenshots/flatfile_app_embed_import_screen6.png)

### Portal Import

![home](/screenshots/flatfile_app_home.png)
![portal 1](/screenshots/flatfile_app_portal_import_screen1.png)
![portal 2](/screenshots/flatfile_app_portal_import_screen2.png)
![portal 3](/screenshots/flatfile_app_portal_import_screen3.png)
![portal 4](/screenshots/flatfile_app_portal_import_screen4.png)
![portal 5](/screenshots/flatfile_app_portal_import_screen5.png)
![portal 6](/screenshots/flatfile_app_portal_import_screen6.png)

### Portal Import (Bulk)

This [Portal](https://flatfile.com/developers/) bulk import shows progress while importing 20,000 rows.

![portal bulk 1](/screenshots/flatfile_app_portal_import_bulk_screen1.png)
![portal bulk 2](/screenshots/flatfile_app_portal_import_bulk_screen2.png)
![portal bulk 3](/screenshots/flatfile_app_portal_import_bulk_screen3.png)
