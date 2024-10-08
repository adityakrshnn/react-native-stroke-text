#import <React/RCTViewManager.h>

@interface RCT_EXTERN_MODULE(StrokeTextViewManager, RCTViewManager)

RCT_EXPORT_VIEW_PROPERTY(width, NSNumber)
RCT_EXPORT_VIEW_PROPERTY(text, NSString)
RCT_EXPORT_VIEW_PROPERTY(fontSize, NSNumber)
RCT_EXPORT_VIEW_PROPERTY(textColor, NSString)
RCT_EXPORT_VIEW_PROPERTY(strokeColor, NSString)
RCT_EXPORT_VIEW_PROPERTY(strokeWidth, NSNumber)
RCT_EXPORT_VIEW_PROPERTY(fontFamily, NSString)
RCT_EXPORT_VIEW_PROPERTY(align, NSString)
RCT_EXPORT_VIEW_PROPERTY(ellipsis, BOOL)
RCT_EXPORT_VIEW_PROPERTY(numberOfLines, NSNumber)
RCT_EXPORT_VIEW_PROPERTY(contentPaddingX, NSNumber)
RCT_EXPORT_VIEW_PROPERTY(contentPaddingY, NSNumber)
RCT_EXPORT_VIEW_PROPERTY(offsetX, NSNumber)
RCT_EXPORT_VIEW_PROPERTY(offsetY, NSNumber)
RCT_EXPORT_VIEW_PROPERTY(tShadowColor, NSString)
RCT_EXPORT_VIEW_PROPERTY(textShadowRadius, NSNumber)
RCT_EXPORT_VIEW_PROPERTY(textShadowOffsetX, NSNumber)
RCT_EXPORT_VIEW_PROPERTY(textShadowOffsetY, NSNumber)


@end
