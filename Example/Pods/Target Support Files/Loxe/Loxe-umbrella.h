#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import <Loxe/Loxe.h>
#import <Loxe/LXBlocks.h>
#import <Loxe/LXMacros.h>

FOUNDATION_EXPORT double LoxeVersionNumber;
FOUNDATION_EXPORT const unsigned char LoxeVersionString[];

