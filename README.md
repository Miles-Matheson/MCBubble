# MCBubble - 多功能气泡提示控件

# 

<table>
<tr>
<td width="20%">
  <img src="https://github.com/intsig171/BTBubble/raw/main/Sample/bubbleSmaple.gif" width="100%">
</td>
<td width="100%">
  <strong>MCBubble</strong> 
    <p>BTBubble 是一个高度可定制的气泡提示控件，可以方便地在应用中显示各种提示信息。它支持文本、富文本以及自定义视图的展示，并提供了丰富的动画效果和交互选项。</p>
  <strong>特性</strong>
  <ul>
    <li>多种交互方式（点击消失、外部点击消失等）</li>
    <li>丰富的动画效果（淡入淡出、弹性动画等）</li>
    <li>完全可定制的样式（颜色、圆角、阴影等）</li>
    <li>支持纯文本、富文本和自定义视图内容</li>
    <li>8种展示方向（上下左右及自动方向）</li>
    <li>箭头位置和样式的自定义</li>
    <li>自动布局和边界检测</li>
    <li>遮罩层和挖孔效果</li>
  </ul>
</td>
</tr>
</table>







## 安装

### CocoaPods

```
pod 'BTBubble'
```



## 基本用法

### 显示文本提示

```
let bubble = MCBubble()
bubble.show(text: "这是一个提示气泡", 
           direction: .autoVertical, 
           from: targetView)
```

### 显示富文本提示

```
let attributedText = NSMutableAttributedString(string: "富文本提示")
attributedText.addAttributes([.foregroundColor: UIColor.red], range: NSRange(location: 0, length: 2))

let bubble = MCBubble()
bubble.show(attributedText: attributedText, 
            direction: .down, 
            from: targetView)
```

### 显示自定义视图

```
let customView = MyCustomView()
let bubble = MCBubble()
bubble.show(customView: customView, 
            direction: .left, 
            from: targetView)
```



## 高级配置

![](https://github.com/iAmMccc/MCBubble/blob/main/Sample/MCBubble.png)

### 样式定制

```
let bubble = MCBubble()
bubble.fillColor = .systemBlue
bubble.cornerRadius = 8
bubble.borderColor = .white
bubble.borderWidth = 1
bubble.shadowColor = .black
bubble.shadowOpacity = 0.3
```

### 文字样式

```
bubble.font = UIFont.systemFont(ofSize: 14)
bubble.textColor = .white
bubble.textAlignment = .center
```

### 箭头样式

```
bubble.arrowSize = CGSize(width: 12, height: 8)
bubble.arrowRadius = 2
bubble.arrowOffset = .auto(offset: 10)
```

### 动画设置

```
bubble.animationIn = 0.3
bubble.animationOut = 0.2
bubble.entranceAnimation = .scale
bubble.actionAnimation = .pulse
```

### 交互设置

```
bubble.shouldDismissOnTap = true
bubble.shouldDismissOnTapOutside = true
bubble.tapHandler = { bubble in
    print("气泡被点击")
}
```

## 方法参考

### 显示方法

- `show(text:direction:maxWidth:from:duration:)` - 显示文本气泡
- `show(attributedText:direction:maxWidth:from:duration:)` - 显示富文本气泡
- `show(customView:direction:from:duration:)` - 显示自定义视图气泡

### 更新方法

- `update(text:)` - 更新文本内容
- `update(attributedText:)` - 更新富文本内容
- `update(customView:)` - 更新自定义视图

### 隐藏方法

- `hide(forced:)` - 隐藏气泡

## 注意事项

1. 气泡的最大宽度和高度会根据屏幕尺寸自动调整
2. 使用自定义视图时，请自行管理视图的布局

## 示例

更多使用示例请参考项目中的示例代码。



## Support 💖

![Support](https://github.com/iAmMccc/SmartCodable/blob/main/Document/support.png)





