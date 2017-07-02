#import "UISearchBar+TextAlignment.h"

@implementation UISearchBar (TextAlignment)

- (void)ta_setTextAlignment:(NSTextAlignment)textAlignment {
    NSMutableArray* views = [NSMutableArray arrayWithObject:self];
    while (views.count > 0) {
        UIView* currentView = views.lastObject;
        [views removeLastObject];
        
        for (UIView* subview in currentView.subviews) {
            if ([subview isKindOfClass:[UITextField class]]) {
                ((UITextField*) subview).textAlignment = textAlignment;
            }
            
            [views addObject:subview];
        }
    }
}

@end
