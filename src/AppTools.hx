package;

import haxe.macro.Expr;

#if macro
import sys.io.File;
#end

using haxe.macro.Tools;

class AppTools {
  public macro static function insertTemplate(templateName: String) {
    var template = "";
    
    try {
      template = File.getContent('./${templateName}.html');
    } catch (error: String) {
      trace("Error: " + error);
    }

    return macro react.ReactMacro.jsx($v{template});
  }
}