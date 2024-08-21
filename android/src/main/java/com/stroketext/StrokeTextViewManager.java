package com.stroketext;

import android.view.View;

import com.facebook.react.uimanager.SimpleViewManager;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.annotations.ReactProp;

public class StrokeTextViewManager extends SimpleViewManager<View> {
    public static final String REACT_CLASS = "StrokeTextView";

    @Override
    public String getName() {
        return REACT_CLASS;
    }

    @Override
    public View createViewInstance(ThemedReactContext reactContext) {
        return new StrokeTextView(reactContext);
    }

    @ReactProp(name = "text")
    public void setText(StrokeTextView view, String text) {
        view.setText(text);
    }

    @ReactProp(name = "fontSize")
    public void setFontSize(StrokeTextView view, float fontSize) {
        view.setFontSize(fontSize);
    }

    @ReactProp(name = "textColor")
    public void setTextColor(StrokeTextView view, String textColor) {
        view.setTextColor(textColor);
    }

    @ReactProp(name = "strokeColor")
    public void setStrokeColor(StrokeTextView view, String strokeColor) {
        view.setStrokeColor(strokeColor);
    }

    @ReactProp(name = "strokeWidth")
    public void setStrokeWidth(StrokeTextView view, float strokeWidth) {
        view.setStrokeWidth(strokeWidth);
    }

    @ReactProp(name = "fontFamily")
    public void setFontFamily(StrokeTextView view, String fontFamily) {
        view.setFontFamily(fontFamily);
    }

    @ReactProp(name = "align")
    public void setTextAlignment(StrokeTextView view, String align) {
        view.setTextAlignment(align);
    }

    @ReactProp(name = "numberOfLines")
    public void setNumberOfLines(StrokeTextView view, int numberOfLines) {
        view.setNumberOfLines(numberOfLines);
    }

    @ReactProp(name = "ellipsis")
    public void setEllipsis(StrokeTextView view, boolean ellipsis) {
        view.setEllipsis(ellipsis);
    }

    @ReactProp(name = "width")
    public void setWidth(StrokeTextView view, float width) {
        view.setCustomWidth(width);
    }

    @ReactProp(name = "contentPaddingX")
    public void setContentPaddingX(StrokeTextView view, float contentPaddingX) {
        view.setContentPaddingX(contentPaddingX);
    }

    @ReactProp(name = "contentPaddingY")
    public void setContentPaddingY(StrokeTextView view, float contentPaddingY) {
        view.setContentPaddingY(contentPaddingY);
    }

    @ReactProp(name = "offsetX")
    public void setOffsetX(StrokeTextView view, float offsetX) {
        view.setOffsetX(offsetX);
    }

    @ReactProp(name = "offsetY")
    public void setOffsetY(StrokeTextView view, float offsetY) {
        view.setOffsetY(offsetY);
    }

    @ReactProp(name = "textShadowOffsetX")
    public void setTextShadowOffsetX(StrokeTextView view, float textShadowOffsetX) {
        view.setTextShadowOffsetX(textShadowOffsetX);
    }

    @ReactProp(name = "textShadowOffsetY")
    public void setTextShadowOffsetY(StrokeTextView view, float textShadowOffsetY) {
        view.setTextShadowOffsetY(textShadowOffsetY);
    }

    @ReactProp(name = "tShadowColor")
    public void setTShadowColor(StrokeTextView view, String tShadowColor) {
        view.setTShadowColor(tShadowColor);
    }

    @ReactProp(name = "textShadowRadius")
    public void setTextShadowRadius(StrokeTextView view, float textShadowRadius) {
        view.setTextShadowRadius(textShadowRadius);
    }
}
