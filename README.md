NSDate-SmartTimeAgo
===================

A category that simplifies displaying strings like "4 minutes ago" or "Uploaded 2 weeks ago." Inspired by the excellent [DateTools](https://github.com/MatthewYork/DateTools), SmartTimeAgo handles the logic of determining how long ago an event occurred and smartly returns the duration in the appropriate time unit.

## Format

The default format is simply "X TIME_UNIT ago" and can be easily modified.

  in future  - 0 seconds ago
  < 1 minute  - 30 seconds ago
  < 1 hour    - 30 minutes ago
  < 24 hours  - 6 hours ago
  < 30 days   - 3 weeks ago
  < 1 year    - 6 months ago
  else        - 6 years ago

## Installation

**Cocoapods**

<code>pod 'SmartTimeAgo'</code>

**Manual Installation**

Add <code>NSDate+SmartTimeAgo.{h,m}</code> to your project.

## Usage

  <code>#import "NSDate+SmartTimeAgo.h"</code>
  <code>self.myLabel.text = [someObject.date smartTimeAgo]</code>

## Related

  [DateTools](https://github.com/MatthewYork/DateTools)
  [NSDate-Time-Ago](https://github.com/nikilster/NSDate-Time-Ago)

## Contact

[@kyle_clegg](https://twitter.com/kyle_clegg)
