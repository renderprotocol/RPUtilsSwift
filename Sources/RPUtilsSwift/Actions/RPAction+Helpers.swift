//
//  RPAction+Helpers.swift
//  RPUtilsSwift
//
//  Convenience factory methods for RPAction.
//

import RPGeneratedSwift

// MARK: - RPAction Convenience Factories

public extension RPAction {

    /// Creates a navigation action to the specified view.
    static func navigate(to viewID: String, parameters: [String: String] = [:]) -> RPAction {
        var nav = RPNavigationAction()
        nav.destinationViewID = viewID
        nav.parameters = parameters
        var action = RPAction()
        action.navigation = nav
        return action
    }

    /// Creates an API call action.
    static func apiCall(
        endpoint: String,
        method: String = "GET",
        headers: [String: String] = [:],
        body: String? = nil
    ) -> RPAction {
        var api = RPApiCallAction()
        api.endpoint = endpoint
        api.method = method
        api.headers = headers
        if let body = body {
            api.body = body
        }
        var action = RPAction()
        action.apiCall = api
        return action
    }

    /// Creates an action to open a URL.
    static func openURL(_ url: String, external: Bool = false) -> RPAction {
        var openUrl = RPOpenUrlAction()
        openUrl.url = url
        openUrl.external = external
        var action = RPAction()
        action.openURL = openUrl
        return action
    }

    /// Creates a dismiss action.
    static func dismiss() -> RPAction {
        var action = RPAction()
        action.dismiss = RPDismissAction()
        return action
    }

    /// Creates a custom action with a type and optional payload.
    static func custom(type actionType: String, payload: [String: String] = [:]) -> RPAction {
        var custom = RPCustomAction()
        custom.actionType = actionType
        custom.payload = payload
        var action = RPAction()
        action.custom = custom
        return action
    }
}
