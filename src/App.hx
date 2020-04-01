package;

import react.React;
import react.ReactDOM;
import react.ReactComponent;
import react.ReactMacro.jsx;

import AppTools;

/**
 * This is the main entrypoint for the application.
 */
@:expose
class App extends ReactComponent {
  public function new() {
    super();
  }

  public static function main() {
    ReactDOM.render(React.createElement(App), js.Browser.document.getElementById("root"));
    trace("Application loaded.");
  }

  override function render() {
    var logo = js.Lib.require("./assets/logo.svg");
    return AppTools.insertTemplate("App");
  }
}

/*
 */