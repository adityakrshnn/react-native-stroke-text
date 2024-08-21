import UIKit

class StrokedTextLabel: UILabel {
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.numberOfLines = 0
        self.layer.masksToBounds = false
    }

    private var textInsets: UIEdgeInsets = .zero

    public func updateTextInsets() {
        textInsets = UIEdgeInsets(top: outlineWidth, left: outlineWidth, bottom: outlineWidth, right: outlineWidth)
    }

    var outlineWidth: CGFloat = 0
    var outlineColor: UIColor = .clear
    var align: NSTextAlignment = .center
    var customWidth: CGFloat = 0
    var ellipsis: Bool = false
    var contentPaddingX: CGFloat = 0
    var contentPaddingY: CGFloat = 0
    var offsetX: CGFloat = 0
    var offsetY: CGFloat = 0
    var tShadowColor: UIColor = .clear
    var textShadowRadius: CGFloat = 0
    var textShadowOffsetX: CGFloat = 0
    var textShadowOffsetY: CGFloat = 0



    override func drawText(in rect: CGRect) {
        let shadowOffset = self.shadowOffset
        let textColor = self.textColor

        self.lineBreakMode = ellipsis ? .byTruncatingTail : .byWordWrapping

        let adjustedRect = rect.offsetBy(dx: offsetX, dy: offsetY)

        let context = UIGraphicsGetCurrentContext()
        context?.setLineWidth(outlineWidth)
        context?.setLineJoin(.round)
        context?.setTextDrawingMode(.stroke)
        self.textAlignment = align
        self.textColor = outlineColor

        super.drawText(in: adjustedRect)

        context?.setTextDrawingMode(.fill)
        self.textColor = textColor
        self.shadowOffset = CGSize(width: 0, height: 0)
        super.drawText(in: adjustedRect)

        self.layer.shadowColor = tShadowColor.cgColor
        self.layer.shadowRadius = textShadowRadius
        self.layer.shadowOpacity = Float(1.0)
        self.layer.shadowOffset = CGSize(width: textShadowOffsetX, height: textShadowOffsetY)

    }

    override var intrinsicContentSize: CGSize {
        var contentSize = super.intrinsicContentSize
        if customWidth > 0 {
            contentSize.width = customWidth
        } else {
            contentSize.width += contentPaddingX
        }

        contentSize.height += contentPaddingY

        return contentSize
    }
}
