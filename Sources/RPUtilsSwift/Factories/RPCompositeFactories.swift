//
//  RPCompositeFactories.swift
//  RPUtilsSwift
//
//  Factory helpers for composite components.
//

import RPGeneratedSwift

// MARK: - RPScaffold Factory Helpers

public extension RPScaffold {

    /// Creates a scaffold with an app bar, body, and optional bottom nav bar.
    static func with(
        appBar: RPAppBar? = nil,
        body: RPWidget,
        bottomNavBar: RPBottomNavBar? = nil,
        backgroundColor: RPColor? = nil
    ) -> RPScaffold {
        var scaffold = RPScaffold()
        if let appBar = appBar { scaffold.appBar = appBar }
        scaffold.body = body
        if let bottomNavBar = bottomNavBar { scaffold.bottomNavBar = bottomNavBar }
        if let backgroundColor = backgroundColor { scaffold.backgroundColor = backgroundColor }
        return scaffold
    }
}

// MARK: - RPCard Factory Helpers

public extension RPCard {

    /// Creates a card with a child, optional elevation, corner radius, background color, and padding.
    static func with(
        child: RPWidget,
        elevation: Float? = nil,
        cornerRadius: Float? = nil,
        backgroundColor: RPColor? = nil,
        padding: RPEdgeInsets? = nil
    ) -> RPCard {
        var card = RPCard()
        card.child = child
        if let elevation = elevation { card.elevation = elevation }
        if let cornerRadius = cornerRadius { card.cornerRadius = cornerRadius }
        if let backgroundColor = backgroundColor { card.backgroundColor = backgroundColor }
        if let padding = padding { card.padding = padding }
        return card
    }
}

// MARK: - RPListTile Factory Helpers

public extension RPListTile {

    /// Creates a list tile with title, optional subtitle, leading/trailing widgets, and tap action.
    static func with(
        title: RPWidget,
        subtitle: RPWidget? = nil,
        leading: RPWidget? = nil,
        trailing: RPWidget? = nil,
        onTap: RPAction? = nil
    ) -> RPListTile {
        var tile = RPListTile()
        tile.title = title
        if let subtitle = subtitle { tile.subtitle = subtitle }
        if let leading = leading { tile.leading = leading }
        if let trailing = trailing { tile.trailing = trailing }
        if let onTap = onTap { tile.onTap = onTap }
        return tile
    }
}

// MARK: - RPAppBar Factory Helpers

public extension RPAppBar {

    /// Creates an app bar with a title, optional leading widget, actions, and background color.
    static func with(
        title: RPWidget,
        leading: RPWidget? = nil,
        actions: [RPWidget] = [],
        backgroundColor: RPColor? = nil
    ) -> RPAppBar {
        var appBar = RPAppBar()
        appBar.title = title
        if let leading = leading { appBar.leading = leading }
        appBar.actions = actions
        if let backgroundColor = backgroundColor { appBar.backgroundColor = backgroundColor }
        return appBar
    }

    /// Creates an app bar with a text title.
    static func titled(
        _ title: String,
        style: RPTextStyle? = nil,
        leading: RPWidget? = nil,
        actions: [RPWidget] = [],
        backgroundColor: RPColor? = nil
    ) -> RPAppBar {
        var text = RPText()
        text.value = title
        if let style = style { text.style = style }

        return RPAppBar.with(
            title: text.makeWidget(),
            leading: leading,
            actions: actions,
            backgroundColor: backgroundColor
        )
    }
}

// MARK: - RPBadge Factory Helpers

public extension RPBadge {

    /// Creates a badge with a child widget, value, and color.
    static func with(
        child: RPWidget,
        value: String? = nil,
        color: RPColor? = nil
    ) -> RPBadge {
        var badge = RPBadge()
        badge.child = child
        if let value = value { badge.value = value }
        if let color = color { badge.color = color }
        return badge
    }
}

// MARK: - RPBottomNavBar Factory Helpers

public extension RPBottomNavBar {

    /// Creates a bottom navigation bar from items.
    static func with(
        items: [RPBottomNavItem],
        selectedIndex: Int32 = 0,
        backgroundColor: RPColor? = nil,
        selectedColor: RPColor? = nil,
        unselectedColor: RPColor? = nil
    ) -> RPBottomNavBar {
        var navBar = RPBottomNavBar()
        navBar.items = items
        navBar.selectedIndex = selectedIndex
        if let backgroundColor = backgroundColor { navBar.backgroundColor = backgroundColor }
        if let selectedColor = selectedColor { navBar.selectedColor = selectedColor }
        if let unselectedColor = unselectedColor { navBar.unselectedColor = unselectedColor }
        return navBar
    }
}

// MARK: - RPBottomNavItem Factory Helpers

public extension RPBottomNavItem {

    /// Creates a bottom navigation item.
    static func with(
        icon: RPIcon,
        label: String? = nil,
        action: RPAction? = nil
    ) -> RPBottomNavItem {
        var item = RPBottomNavItem()
        item.icon = icon
        if let label = label { item.label = label }
        if let action = action { item.action = action }
        return item
    }
}

// MARK: - RPEdgeInsets Factory Helpers

public extension RPEdgeInsets {

    /// Creates edge insets with uniform value on all sides.
    static func all(_ value: Float) -> RPEdgeInsets {
        var insets = RPEdgeInsets()
        insets.top = value
        insets.bottom = value
        insets.leading = value
        insets.trailing = value
        return insets
    }

    /// Creates edge insets with symmetric vertical/horizontal values.
    static func symmetric(vertical: Float = 0, horizontal: Float = 0) -> RPEdgeInsets {
        var insets = RPEdgeInsets()
        insets.top = vertical
        insets.bottom = vertical
        insets.leading = horizontal
        insets.trailing = horizontal
        return insets
    }

    /// Creates edge insets with explicit values for each edge.
    static func only(
        top: Float = 0,
        bottom: Float = 0,
        leading: Float = 0,
        trailing: Float = 0
    ) -> RPEdgeInsets {
        var insets = RPEdgeInsets()
        insets.top = top
        insets.bottom = bottom
        insets.leading = leading
        insets.trailing = trailing
        return insets
    }
}
