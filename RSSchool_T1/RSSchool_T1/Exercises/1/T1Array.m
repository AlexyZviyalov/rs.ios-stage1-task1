#import "T1Array.h"

@implementation T1Array

// Complete the following fuction
- (NSArray *)convertToHappy:(NSArray *)sadArray {
    NSArray *emptyArray = @[];
    if ([sadArray isEqualToArray: emptyArray]) {
        return emptyArray;
    }
    else {
        
        NSMutableArray *happyArray = [[NSMutableArray alloc] init];
        [happyArray addObjectsFromArray: sadArray];
        bool notHappy = TRUE;
        while (notHappy) {
            for (int i=1; i<happyArray.count-1; i++) {
                int c = [happyArray[i-1] intValue] + [happyArray[i+1] intValue];
                int d = [happyArray [i] intValue];
                if (c < d) {
                    [happyArray removeObjectAtIndex: i];
                }
            }
            
            int mistakesCount =0;
            for (int i=1; i<happyArray.count-1; i++) {
                int e = [happyArray[i-1] intValue] + [happyArray[i+1] intValue];
                int f = [happyArray [i] intValue];
                if (e < f) {
                    mistakesCount +=1;
                }
            }
            
            if (mistakesCount != 0) {
                notHappy = TRUE;
            }
            else {
                notHappy = FALSE;
            }
        }
        
        return happyArray;
    }
}


@end
