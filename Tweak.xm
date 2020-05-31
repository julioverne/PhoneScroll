#import <dlfcn.h>
#import <objc/runtime.h>
#import <substrate.h>

#define NSLog(...)

@interface NSObject ()
- (int)currentTabViewType;
- (int)tabTypeForViewController:(id)arg1;
- (id)contentScrollView;
- (void)pl_scrollToTop:(BOOL)arg1;
- (BOOL)_scrollToTopIfPossible:(BOOL)arg1;
@end

%hook PhoneTabBarController
- (BOOL)tabBarController:(UITabBarController *)arg1 shouldSelectViewController:(UITableViewController *)arg2
{
	@try {
		if([self tabTypeForViewController:arg2] == [self currentTabViewType]) {
			@try {
				[[arg2 contentScrollView] pl_scrollToTop:YES];
			}@catch(NSException* ex) {
				[[arg2 contentScrollView] _scrollToTopIfPossible:YES];
			}
		}
	}@catch(NSException* ex) {
	}
	return %orig;
}
%end