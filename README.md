# Flutter Widget Documentation

This is a documentation for the following Flutter widgets:

- Container
- Padding
- Transform
- ConstrainedBox
- FittedBox
- RotatedBox
- SizedBox
- Icon
- Image
- Chip

## Container

The Container widget is a convenience widget that combines common painting, positioning, and sizing widgets.
Properties

    child : The widget that will be contained.
    alignment : How to align the child within the container.
    padding : The amount of space to insert between the child and the edges of the container.
    color : The background color of the container.

### Examples

```dart
Container(
  child: Text("Hello, World!"),
  alignment: Alignment.center,
  padding: EdgeInsets.all(8.0),
  color: Colors.grey[200],
)
```

## Padding

The Padding widget adds padding to its child.

`Properties`

`padding` : The amount of padding to add to the child.
`child` : The widget that will have padding added to it.

### Examples

```dart
Padding(
  padding: EdgeInsets.all(8.0),
  child: Text("Hello, World!"),
)
```

## Transform

The Transform widget applies a transformation before painting its child.

`Properties`

`transform` : The transformation matrix to apply.
`child` : The widget that will be transformed.

### Examples

```dart
Transform.rotate(
  angle: pi / 2,
  child: Text("Hello, World!"),
)
```

## ConstrainedBox

The ConstrainedBox widget imposes additional constraints on its child.

`Properties`

`constraints` : The additional constraints to apply to the child.
`child` : The widget that will be constrained.

### Examples

```dart
ConstrainedBox(
  constraints: BoxConstraints(minWidth: 50.0, minHeight: 50.0),
  child: Text("Hello, World!"),
)
```

## FittedBox

The FittedBox widget scales and aligns its child within itself and then increases its own size to fully cover its parent.

`Properties`

`fit` : How to inscribe the child into the space allocated during layout.
`alignment` : How to align the child within its bounds.
`child` : The widget that will be fitted.

### Examples

```dart
FittedBox(
  fit: BoxFit.contain,
  alignment: Alignment.topLeft,
  child: Text("Hello, World!"),
)
```

## RotatedBox

The RotatedBox widget rotates its child by a specific number of degrees.

`Properties`

`quarterTurns` : The number of clockwise quarter turns the child should be rotated.
`child` : The widget that will be rotated.

### Examples

```dart
RotatedBox(
  quarterTurns: 1,
  child: Text("Hello, World!"),
)
```

## SizedBox

The SizedBox widget is a fixed-size box that forces its child to have a specific width and/or height.

`Properties`

`width` : The width the child should have.
`height` : The height the child should have.
`child` : The widget that will be sized.

### Examples

```dart
SizedBox(
  width: 100.0,
  height: 100.0,
  child: Text("Hello, World!"),
)
```

## Icon

The Icon widget displays an icon from a font.

`Properties`

`icon` : The icon to display.
`color` : The color to use when painting the icon.
`size` : The size of the icon.

### Examples

```dart
Icon(
  Icons.favorite,
  color: Colors.red,
  size: 24.0,
)
```

## Image

The Image widget displays an image.

`Properties`

`image` : The image to display.
`fit` : How to inscribe the image into the space allocated during layout.
`alignment` : How to align the image within its bounds.

### Examples

```dart
Image.asset(
  "images/my_image.png",
  fit: BoxFit.cover,
  alignment: Alignment.center,
)
```

## Chip

The Chip widget is a Material Design chip.

`Properties`

`label` : The text label to display on the chip.
`avatar` : The widget to display on the left side of the chip.
`deleteIcon` : The icon to display on the right side of the chip that can be used to delete the chip.

### Examples

```dart
Chip(
  label: Text("My Chip"),
  avatar: Icon(Icons.tag_faces),
  deleteIcon: Icon(Icons.cancel),
)
```