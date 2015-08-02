Hello world on N2O framework!
==============================================================================

Debug Logging:
------------------------------------------------------------------------------

config module:
```
log_level() -> debug.
log_modules() ->  any.
  %% For custom modules:
  % [
  %   login,
  %   index
  % ].
```

sys.config:
```
 {n2o,
  [
   {log_modules, config},
   {log_level, config},
   {log_backend, n2o_log},
  ]
 }
```
