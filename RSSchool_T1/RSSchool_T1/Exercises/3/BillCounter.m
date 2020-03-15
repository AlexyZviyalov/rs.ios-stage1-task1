#import "BillCounter.h"

@implementation BillCounter

// Complete the following fuction
- (NSString*)compareResultForBill:(NSArray<NSNumber*>*)bill notIncludingElementWithIndex:(NSInteger)index withGivenSum:(NSNumber*)sum {
    NSMutableArray *billToPay = [[NSMutableArray alloc] init];
    [billToPay addObjectsFromArray: bill];
    int annaNotToPay4= [bill [index] intValue];
    int billAmount = 0;
    for (int i = 0; i<billToPay.count; i++) {
        billAmount += [[billToPay objectAtIndex:i] intValue];
    }
    int amountToShare = 0;
    amountToShare = billAmount - annaNotToPay4;
    int annaToPay = 0;
    annaToPay = amountToShare / 2;
    int annaCashBack =0;
    int annasGivenSum = [sum intValue];
    annaCashBack = annasGivenSum - annaToPay;
    
    bool annaGaveEnough = TRUE;
    if (annaCashBack == 0) {
        annaGaveEnough = TRUE;
    } else {
        annaGaveEnough = FALSE;
    }
    
    if (annaGaveEnough) {
        return @"Bon Appetit";
    }
    else {
        return [NSString stringWithFormat:@"%d", annaCashBack];
    }
}

@end
