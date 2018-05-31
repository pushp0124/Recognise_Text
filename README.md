# Recognise_Text

## Project Description

Uses Tesseract open source Library to recognise text from Images.

OCR : Optical Character Recognition (OCR) is the process of extracting digital text from images. Once extracted, a user may then use the text for document editing, free-text searches, compression, etc.

Tesseract : an open-source OCR engine maintained by Google. In 2006 Tesseract was considered one of the most accurate open-source OCR engines then available.

Tesseract OCR is quite powerful, but does have the following limitations:

1. Unlike some OCR engines (like those used by the U.S. Postal Service to sort mail), Tesseract is unable to recognize handwriting. In fact, it’s limited to about 64 fonts in total.
2. Tesseract’s performance can improve with image pre-processing. You may need to scale images, increase color contrast, and horizontally-align the text for optimal results.
3. Finally, Tesseract OCR only works on Linux, Windows, and Mac OS X.

Then how to work in iOS? There’s an Objective-C wrapper for Tesseract OCR written by [gali8](https://github.com/gali8/Tesseract-OCR-iOS) which we can use in Swift and iOS.
[Read more...](https://github.com/tesseract-ocr/)

## Working Demo

### Image is Picked Up By User ###
![screen shot 2018-06-01 at 12 24 04 am](https://user-images.githubusercontent.com/26254257/40802239-ade4bb62-6532-11e8-9262-b97a200813d6.png)

### Original Image ###
![screen shot 2018-06-01 at 12 31 49 am](https://user-images.githubusercontent.com/26254257/40802653-e1a824e2-6533-11e8-9612-b09e49463699.png)

### Recognised Image ###
![screen shot 2018-06-01 at 12 25 17 am](https://user-images.githubusercontent.com/26254257/40802248-afee2876-6532-11e8-9bf5-c3e5ecc05d72.png)

### Original Image ###

![screen shot 2018-06-01 at 12 39 56 am](https://user-images.githubusercontent.com/26254257/40802819-5b7add14-6534-11e8-8dad-e3dd890f502d.png)


### Recognised Image ###

### Benefit ###
#### Add your own text with previous text embedded in any image(should be clear) ####


![screen shot 2018-06-01 at 12 33 59 am](https://user-images.githubusercontent.com/26254257/40803085-3a6d03b2-6535-11e8-9c9d-0c38980d1483.png)


With :hearts: :blush:
