//
//  NSDate+Additions.m
//
//  Created by Kyle Clegg on 8/25/14.
//

#import "NSDate+SmartTimeAgo.h"

#define secondsInMinute 60
#define minutesInHour   60
#define hoursInDay      24
#define daysInWeek      7
#define daysInMonth     30
#define weeksInMonth    4.28
#define monthsInYear    12

@implementation NSDate (SmartTimeAgo)

#pragma mark - Private
/* Prefixed with underscore to not clash with NSDate+DateTools */

- (NSInteger)_secondsAgo {
    if ([self _isFuture]) return 0;
    return [self timeIntervalSinceNow] * -1;
}

- (NSInteger)_minutesAgo {
    if ([self _isFuture]) return 0;
    return [self timeIntervalSinceNow] / secondsInMinute * -1;
}

- (NSInteger)_hoursAgo {
    if ([self _isFuture]) return 0;
    return [self timeIntervalSinceNow] / (secondsInMinute * minutesInHour) * -1;
}

- (NSInteger)_daysAgo {
    if ([self _isFuture]) return 0;
    return [self timeIntervalSinceNow] / (secondsInMinute * minutesInHour * hoursInDay) * -1;
}

- (NSInteger)_weeksAgo {
    if ([self _isFuture]) return 0;
    return [self timeIntervalSinceNow] / (secondsInMinute * minutesInHour * hoursInDay * daysInWeek) * -1;
}

- (NSInteger)_monthsAgo {
    if ([self _isFuture]) return 0;
    return [self timeIntervalSinceNow] / (secondsInMinute * minutesInHour * hoursInDay * daysInMonth) * -1;
}

- (NSInteger)_yearsAgo {
    if ([self _isFuture]) return 0;
    return [self timeIntervalSinceNow] / (secondsInMinute * minutesInHour * hoursInDay * daysInMonth * monthsInYear) * -1;
}

- (BOOL)_isFuture {
    return [self timeIntervalSinceNow] > 0;
}

#pragma mark - Public

- (NSString *)smartTimeAgo {
    NSString* timeAgo = @"0 seconds";

    if ([self _secondsAgo] < secondsInMinute) {
        NSString* secondString = @"second";
        if ([self _secondsAgo] != 1) { secondString = [secondString stringByAppendingString:@"s"]; }
        timeAgo = [NSString stringWithFormat:@"%@ %@", [NSNumber numberWithInteger:[self _secondsAgo]], secondString];
    }
    else if ([self _minutesAgo] < minutesInHour) {
        NSString* minuteString = @"minute";
        if ([self _minutesAgo] != 1) { minuteString = [minuteString stringByAppendingString:@"s"]; }
        timeAgo = [NSString stringWithFormat:@"%@ %@", [NSNumber numberWithInteger:[self _minutesAgo]], minuteString];
    }
    else if ([self _hoursAgo] < hoursInDay) {
        NSString* hourString = @"hour";
        if ([self _hoursAgo] != 1) { hourString = [hourString stringByAppendingString:@"s"]; }
        timeAgo = [NSString stringWithFormat:@"%@ %@", [NSNumber numberWithInteger:[self _hoursAgo]], hourString];
    }
    else if ([self _daysAgo] < daysInWeek) {
        NSString* dayString = @"day";
        if ([self _daysAgo] != 1) { dayString = [dayString stringByAppendingString:@"s"]; }
        timeAgo = [NSString stringWithFormat:@"%@ %@", [NSNumber numberWithInteger:[self _daysAgo]], dayString];
    }
    else if ([self _weeksAgo] < weeksInMonth) {
        NSString* weekString = @"week";
        if ([self _weeksAgo] != 1) { weekString = [weekString stringByAppendingString:@"s"]; }
        timeAgo = [NSString stringWithFormat:@"%@ %@", [NSNumber numberWithInteger:[self _weeksAgo]], weekString];
    }
    else if ([self _monthsAgo] < monthsInYear) {
        NSString* monthString = @"month";
        if ([self _monthsAgo] != 1) { monthString = [monthString stringByAppendingString:@"s"]; }
        timeAgo = [NSString stringWithFormat:@"%@ %@", [NSNumber numberWithInteger:[self _monthsAgo]], monthString];
    }
    else {
        NSString* yearString = @"year";
        if ([self _yearsAgo] != 1) { yearString = [yearString stringByAppendingString:@"s"]; }
        timeAgo = [NSString stringWithFormat:@"%@ %@", [NSNumber numberWithInteger:[self _yearsAgo]], yearString];
    }

    // Change this to any desired formatting, such as "3 seconds ago" or "3 seconds since..."
    return [NSString stringWithFormat:@"%@ ago", timeAgo];
}

@end
