//
//  RPLayoutFactories.swift
//  RPUtilsSwift
//
//  Factory helpers for layout components.
//

import RPGeneratedSwift

// MARK: - RPRow Factory Helpers

public extension RPRow {

    /// Creates an RPRow with children, optional spacing, and alignment.
    static func with(
        children: [RPWidget],
        spacing: Int64 = 0,
        alignment: RPAxisAlignment = .unspecified
    ) -> RPRow {
        var row = RPRow()
        row.children = children
        row.spacing = spacing
        row.alignment = alignment
        return row
    }
}

// MARK: - RPColumn Factory Helpers

public extension RPColumn {

    /// Creates an RPColumn with children, optional spacing, and alignment.
    static func with(
        children: [RPWidget],
        spacing: Int64 = 0,
        alignment: RPAxisAlignment = .unspecified
    ) -> RPColumn {
        var column = RPColumn()
        column.children = children
        column.spacing = spacing
        column.alignment = alignment
        return column
    }
}

// MARK: - RPStack Factory Helpers

public extension RPStack {

    /// Creates an RPStack with children and alignment.
    static func with(
        children: [RPWidget],
        alignment: RPAlignment = .center
    ) -> RPStack {
        var stack = RPStack()
        stack.children = children
        stack.alignment = alignment
        return stack
    }
}

// MARK: - RPLazyList Factory Helpers

public extension RPLazyList {

    /// Creates an RPLazyList with children, axis, and spacing.
    static func with(
        children: [RPWidget],
        axis: RPAxis = .vertical,
        spacing: Float = 0,
        showsIndicators: Bool = true
    ) -> RPLazyList {
        var list = RPLazyList()
        list.children = children
        list.axis = axis
        list.spacing = spacing
        list.showsIndicators = showsIndicators
        return list
    }
}

// MARK: - RPLazyGrid Factory Helpers

public extension RPLazyGrid {

    /// Creates a fixed-column lazy grid.
    static func fixed(
        columns: Int32,
        children: [RPWidget],
        spacing: Float = 0,
        runSpacing: Float = 0
    ) -> RPLazyGrid {
        var layout = RPGridLayout()
        var fixed = RPFixedGrid()
        fixed.count = columns
        layout.fixed = fixed
        var grid = RPLazyGrid()
        grid.children = children
        grid.layout = layout
        grid.spacing = spacing
        grid.runSpacing = runSpacing
        return grid
    }

    /// Creates an adaptive lazy grid with minimum item width.
    static func adaptive(
        minItemWidth: Float,
        children: [RPWidget],
        spacing: Float = 0,
        runSpacing: Float = 0
    ) -> RPLazyGrid {
        var layout = RPGridLayout()
        var adaptive = RPAdaptiveGrid()
        adaptive.minItemWidth = minItemWidth
        layout.adaptive = adaptive
        var grid = RPLazyGrid()
        grid.children = children
        grid.layout = layout
        grid.spacing = spacing
        grid.runSpacing = runSpacing
        return grid
    }
}

// MARK: - RPWrap Factory Helpers

public extension RPWrap {

    /// Creates an RPWrap with children, spacing, and alignment.
    static func with(
        children: [RPWidget],
        spacing: Float = 0,
        runSpacing: Float = 0,
        alignment: RPAlignment = .unspecified
    ) -> RPWrap {
        var wrap = RPWrap()
        wrap.children = children
        wrap.spacing = spacing
        wrap.runSpacing = runSpacing
        wrap.alignment = alignment
        return wrap
    }
}
