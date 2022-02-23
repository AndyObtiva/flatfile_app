# Flatfile App

This is a web application prototype that demoes how to use the https://flatfile.com csv/xlsx import service.

It supports [Embed](https://flatfile.com/docs/getting-started/) and [Portal](https://flatfile.com/developers/) Imports.

[Embed](https://flatfile.com/docs/getting-started/) is more basic. [Portal](https://flatfile.com/developers/) is more advanced and supports field alternates.

Examples:
1. [Embed Import](#embed-import) of [example1.xlsx](/example1.xlsx) results in [example1.json](/example1.json)
2. [Portal Import](#portal-import) of [example2.csv](/example2.csv) results in [example2.json](/example2.json)
3. [Portal Import (Bulk)](#portal-import-bulk) of [example3.csv](/example3.csv) 20,000 rows (took only 35 seconds)
4. [Portal Import (Bulk with Webhook)](#portal-import-bulk-with-webhook) of [example4.csv](/example4.csv) 20,000 rows (took only 35 seconds and posted to '/imports' [webhook](https://flatfile.com/developers/guides/webhooks/) in batches stored in 'imports' database table). [example4.json](/example4.json) is one batch sample.

Themes are supported by [flatfile](https://flatfile.com) (example code is included in this app, but disabled):

https://flatfile.com/developers/javascript/themes/

Internationalization (i18n) is supported by [flatfile](https://flatfile.com) (though there is a small bug where if `i18nOverrides` were used when calling `setLanguage` manually, they end up getting merged to browser default (primary) language instead of code set language; I reported the issue to https://flatfile.com and they are going to fix it, but there are workarounds in the mean time like either not using i18nOverrides when setting language directly (e.g. 'fr' for French) or setting overrides for all properties in other languages if really needed):

https://flatfile.com/developers/guides/custom-portal-text/

https://support.flatfile.com/hc/en-us/articles/4407432342164-How-can-I-choose-a-language-in-the-Flatfile-importer-

Webhook batch posting of 1000 imports per batch is supported (setup at `/imports` path):

https://flatfile.com/developers/javascript/options/#webhookurl

https://flatfile.com/developers/guides/webhooks/

## Demo

A demo is hosted on heroku:

https://flatfile-app.herokuapp.com/

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

It only took about 35 seconds to be done with importing all 20,000 rows (json shows up in console when done).

![portal bulk 1](/screenshots/flatfile_app_portal_import_bulk_screen1.png)
![portal bulk 2](/screenshots/flatfile_app_portal_import_bulk_screen2.png)
![portal bulk 3](/screenshots/flatfile_app_portal_import_bulk_screen3.png)

### Portal Import (Bulk with Webhook)

This is just like the previous bulk import, but with an added webhook for storing data in batches of 1000 into database.

This Heroku data clip shows the import data stored:

https://data.heroku.com/dataclips/abugyooastacvohbjqnslycakpdh

[example4.json](/example4.json) is one batch sample of it.
