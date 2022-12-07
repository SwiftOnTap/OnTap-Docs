/// A shape that is replaced by an inset version of the current
/// container shape. If no container shape was defined, is replaced by
/// a rectangle.
///
/// Use this shape primarily with **widgets**. It generates container-relative
/// rounded rectangles.
///
/// The example below is generated by going to
///
/// *File > New > Target*
///
/// Then search for "Widget Extension", click **Next**, give it a
/// **Product Name**, then click **Finish**. In the new `.swift` file,
/// edit the ``View``:
///
/// ```
/// struct TimeEntryView: View {
///     var entry: Provider.Entry
///
///     var body: some View {
///         VStack {
///             ContainerRelativeShape()
///                 .fill(Color.yellow)
///                 .overlay(Text("Time"))
///             ContainerRelativeShape()
///                 .fill(Color.blue)
///                 .overlay(Text(entry.date, style: .time))
///         }
///     }
/// }
/// ```
///
/// ![A view containing a VStack with two ContainerRelativeShapes, one with yellow
/// fill and the text "Time" and the other with blue fill and a textview displaying
/// the time; the view styles a widget shown on an IPhone homescreen.](containerrelativeshape.png)
///
@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@frozen public struct ContainerRelativeShape : Shape {

    /// Describes this shape as a path within a rectangular frame of reference.
    ///
    /// - Parameter rect: The frame of reference for describing this shape.
    ///
    /// - Returns: A path that describes this shape.
    public func path(in rect: CGRect) -> Path { }

    /// Creates a relative container shape.
    ///
    /// This is the only initializer of ``ContainerRelativeShape``, and it
    /// take no parameters.
    ///
    /// Use this shape primarily with **widgets**. It generates container-relative
    /// rounded rectangles.
    ///
    /// The example below is generated by going to
    ///
    /// *File > New > Target*
    ///
    /// Then search for "Widget Extension", click **Next**, give it a
    /// **Product Name**, then click **Finish**. In the new `.swift` file,
    /// edit the ``View``:
    ///
    /// ```
    /// struct TimeEntryView: View {
    ///     var entry: Provider.Entry
    ///
    ///     var body: some View {
    ///         VStack {
    ///             ContainerRelativeShape()
    ///                 .fill(Color.yellow)
    ///                 .overlay(Text("time"))
    ///             ContainerRelativeShape()
    ///                 .fill(Color.blue)
    ///                 .overlay(Text(entry.date, style: .time))
    ///         }
    ///     }
    /// }
    /// ```
    ///
    /// ![A view containing a VStack with two ContainerRelativeShapes, one with yellow
    /// fill and the text "Time" and the other with blue fill and a textview displaying
    /// the time; the view styles a widget shown on an IPhone homescreen.](containerrelativeshape.png)
    ///
    @inlinable public init() { }

    /// The type defining the data to animate.
    public typealias AnimatableData = EmptyAnimatableData

    /// The type of view representing the body of this view.
    ///
    /// When you create a custom view, Swift infers this type from your
    /// implementation of the required `body` property.
    public typealias Body
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ContainerRelativeShape : InsettableShape {

    /// Returns `self` inset by `amount`.
    @inlinable public func inset(by amount: CGFloat) -> some InsettableShape { }


    /// The type of the inset shape.
    public typealias InsetShape = some InsettableShape
}
