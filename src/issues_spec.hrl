-ifndef(issues_spec_hrl).
-define(issues_spec_hrl, included).

-type location() :: {Line::pos_integer(), Column::pos_integer()} |
                    Line::pos_integer().
-type warning() :: {warning, location(), Description::string()}.
-type error() :: {error, Description::string()} |
                 {error, location(), Description::string()}.

-type issue() :: warning() | error().

-type line() :: none | pos_integer().

-type error_info() :: {
    ErrorLine::line(),
    Module::module(),
    ErrorDescriptor::term()
}.

-type error_list() :: [{FileName::file:filename(), [ErrorInfo::error_info()]}].
-type warning_list() :: error_list().

-endif.
