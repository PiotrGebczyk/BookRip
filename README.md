
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
```

This will create a folder named after the book, download the pages, and merge them into `BookTitle.pdf` in the current directory.

## Color Codes in the Script

- **Green**: Indicates the book name being downloaded.
- **Yellow**: Shows progress status during merging.
