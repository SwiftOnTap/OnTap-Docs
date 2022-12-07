/// A stylized view with an optional label that is associated with a logical
/// grouping of content.
///
/// You create a `GroupBox` by providing an optional label, which describes the
/// grouping of UI elements within, and the actual content. For example:
///
/// ```
/// struct ContentView: View {
///     var body: some View {
///         GroupBox(label: Label("GroupBox Label", systemImage: "smiley"))
///         {
///             Text("Content within GroupBox")
///             Text("More text content!")
///         }
///     }
/// }
/// ```
///
/// ![A view containing a GroupBox with the label "GroupBox Label" paired with a
/// smiley face systemImage and two text view contained wihtin.](group-box-ex.png)
///
@available(iOS 14.0, macOS 10.15, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct GroupBox<Label, Content> : View where Label : View, Content : View {

    /// Creates a group box from a label and a view builder of content.
    ///
    /// - Parameters:
    ///   - label: The label to associate with the grouped content.
    ///   - content: The grouped content to appear with the label.
    public init(label: Label, @ViewBuilder content: () -> Content) { }

    /// The content and behavior of the view.
    public var body: some View { get }

    /// The type of view representing the body of this view.
    ///
    /// When you create a custom view, Swift infers this type from your
    /// implementation of the required `body` property.
    public typealias Body = some View
}

@available(iOS 14.0, macOS 10.15, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension GroupBox where Label == GroupBoxStyleConfiguration.Label, Content == GroupBoxStyleConfiguration.Content {

    /// Creates an instance representing the configuration of a ``GroupBoxStyle``.
    public init(_ configuration: GroupBoxStyleConfiguration) { }
}

@available(iOS 14.0, macOS 10.15, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension GroupBox where Label == EmptyView {

    /// Creates a group box from only content, without including a label.
    ///
    /// - Parameter content: The grouped content that you want in the group box.
    public init(@ViewBuilder content: () -> Content) { }
}

