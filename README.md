
# BookRip

## Overview

**BookRip** is a Bash script designed to download images of a book from the `flipbook.apps.gwo.pl` website, merge them into a PDF, and name the output based on the book's title. The script provides color-coded status messages for a more interactive experience.

### Features

- Downloads book images sequentially.
- Automatically names the PDF based on the book's title.
- Merges downloaded images into a single PDF file.

## Requirements

Before using the script, ensure you have the following installed:

- `curl`: For fetching the book's title and downloading images.
- `ImageMagick`: For merging images into a PDF.

## Installation

You can install and use **BookRip** by cloning it from GitHub. Follow these steps:

1. Open your terminal.
2. Clone the repository:
   ```bash
   git clone https://github.com/PiotrGebczyk/BookRip.git
   ```
3. Navigate into the cloned directory:
   ```bash
   cd BookRip
   ```
4. Make the script executable:
   ```bash
   chmod +x BookRip.sh
   ```

Now, you're ready to use the script to download books.

## Finding Book IDs

To use the script, you'll need the `bookid` of the book you want to download. You can find it using a Google search prompt. Here's how:

1. Open Google.
2. Type the following search prompt:
   ```bash
   site:flipbook.apps.gwo.pl [Nazwa książki]
   ```
   Replace `[Nazwa książki]` with the name of the book you're looking for.

3. The search results will show you a link to the book. Extract the `bookid` from the URL:
   ```
   https://flipbook.apps.gwo.pl/display/[bookid]
   ```

## Usage

1. After finding the `bookid`, you can run the script like this:
   ```bash
   ./BookRip.sh <bookid>
   ```

   Replace `<bookid>` with the actual book ID from the Flipbook URL.

2. The script will:
   - Fetch the book’s title and display it in green.
   - Download all the pages of the book into a folder.
   - Merge them into a single PDF file.
   - Display status messages in yellow during the merging process.

## Example

To download a book with the ID `12345`, run:

```bash
./BookRip.sh 12345

You are downloading: "Textbook123abc"  :)
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  247k  100  247k    0     0   574k      0 --:--:-- --:--:-- --:--:--  577k
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  112k  100  112k    0     0   283k      0 --:--:-- --:--:-- --:--:--  284k
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  131k  100  131k    0     0   331k      0 --:--:-- --:--:-- --:--:--  334k
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  131k  100  131k    0     0   362k      0 --:--:-- --:--:-- --:--:--  364k
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  119k  100  119k    0     0   368k      0 --:--:-- --:--:-- --:--:--  371k
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  141k  100  141k    0     0   447k      0 --:--:-- --:--:-- --:--:--  449k
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  161k  100  161k    0     0   475k      0 --:--:-- --:--:-- --:--:--  479k
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  159k  100  159k    0     0   470k      0 --:--:-- --:--:-- --:--:--  472k
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  118k  100  118k    0     0   360k      0 --:--:-- --:--:-- --:--:--  362k
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  106k  100  106k    0     0   300k      0 --:--:-- --:--:-- --:--:--  303k
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 98786  100 98786    0     0   300k      0 --:--:-- --:--:-- --:--:--  302k
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  120k  100  120k    0     0   361k      0 --:--:-- --:--:-- --:--:--  364k
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  233k  100  233k    0     0   781k      0 --:--:-- --:--:-- --:--:--  789k
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  255k  100  255k    0     0   704k      0 --:--:-- --:--:-- --:--:--  709k
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  275k  100  275k    0     0   603k      0 --:--:-- --:--:-- --:--:--  604k
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  212k  100  212k    0     0   632k      0 --:--:-- --:--:-- --:--:--  636k
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
curl: (22) The requested URL returned error: 404
Book downloaded. Merging and cleaning.
Book "Textbook123abc" (probably) succesfully downloaded

```