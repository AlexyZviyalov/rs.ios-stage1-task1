#import "MiniMaxArrayConverter.h"

@implementation MiniMaxArrayConverter

// Complete the convertFromArray function below.
- (NSArray<NSNumber*>*)convertFromArray:(NSArray<NSNumber*>*)array {
    NSMutableArray *sortedArray = [[NSMutableArray alloc] init];
    [sortedArray addObjectsFromArray: array];
    [sortedArray sortUsingSelector:@selector(compare:)];
    NSLog(@"SORTED%@", sortedArray);
    int min = 0;
    int max = 0;
    for (int i = 0; i < sortedArray.count-1; i++) {
        min += [sortedArray [i] intValue];
    }
    for (int i = 1; i < sortedArray.count; i++) {
        max += [sortedArray [i] intValue];
    }
    NSLog(@"MIN %d", min);
    NSLog(@"MAX %d", max);
    
    NSNumber *mini = [NSNumber numberWithInteger:min];
    NSNumber *maxi = [NSNumber numberWithInteger:max];
    
    NSMutableArray *minMaxArray = [[NSMutableArray alloc] initWithObjects: mini, maxi, nil];;
    NSLog(@"SORTED%@", minMaxArray);
    
    //SMutableArray *happyArray = [[NSMutableArray alloc] init];
    return minMaxArray;
}

@end
