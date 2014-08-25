NSDate-SmartTimeAgo
===================

A category that simplifies displaying strings like "4 minutes ago" or "Uploaded 2 weeks ago." Inspired by the excellent [DateTools](https://github.com/MatthewYork/DateTools), SmartTimeAgo handles the logic of determining how long ago an event occurred and smartly returns the duration in the appropriate time unit.

## Installation

**Cocoapods**

<code>pod 'SmartTimeAgo'</code>

**Manual Installation**

Add <code>NSDate+SmartTimeAgo.{h,m}</code> to your project.

## Usage

* <code>#import "NSDate+SmartTimeAgo.h"</code>
* <code>self.myLabel.text = [someObject.date smartTimeAgo]</code>

## Contact

[@kyle_clegg](https://twitter.com/kyle_clegg)
