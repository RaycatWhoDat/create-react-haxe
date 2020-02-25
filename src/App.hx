package;

import react.React;
import react.ReactDOM;
import react.ReactComponent;
import react.ReactMacro.jsx;

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
    return jsx('
               <div className="App">
               <header className="App-header">
               <img src=$logo className="App-logo" alt="logo" />
               <p>
               Edit <code>src/App.hx</code> and save to reload.
               </p>
               </header>
               </div>
               ');
  }
}

/*
 */