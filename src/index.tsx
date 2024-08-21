import React from "react";
import { requireNativeComponent } from "react-native";

const ComponentName = "StrokeTextView";

type TextAlign = "center" | "left" | "right"

export interface StrokeTextProps {
  width?: number;
  text: string;
  fontSize?: number;
  textColor?: string;
  strokeColor?: string;
  strokeWidth?: number;
  fontFamily?: string;
  align?: TextAlign;
  numberOfLines?: number;
  ellipsis?: boolean;
  contentPaddingX?: number;
  contentPaddingY?: number;
  offsetX?: number;
  offsetY?: number;
  tShadowColor?: string;
  textShadowOffsetX?: number;
  textShadowOffsetY?: number;
  textShadowRadius?: number;
}

const NativeStrokeText = requireNativeComponent<StrokeTextProps>(ComponentName);

export const StrokeText = (props: StrokeTextProps) => {
  return <NativeStrokeText {...props} />;
};
