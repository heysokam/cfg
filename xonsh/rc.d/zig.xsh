# System Binary
aliases['zb']  = 'cl ; ./bin/.zig/zig build --summary all --cache-dir ./bin/.cache/zig --global-cache-dir ./bin/.cache/zig @($args)'
aliases['zr']  = 'cl ; ./bin/.zig/zig build run --summary all --cache-dir ./bin/.cache/zig --global-cache-dir ./bin/.cache/zig @($args)'
aliases['zt']  = 'cl ; ./bin/.zig/zig build test --summary all --cache-dir ./bin/.cache/zig --global-cache-dir ./bin/.cache/zig @($args)'
aliases['zcc'] = './bin/.zig/zig cc -std=c2x -Weverything -Werror -pedantic -pedantic-errors -Wno-declaration-after-statement -Wno-error=vla -Wno-error=padded -Wno-error=pre-c2x-compat -Wno-error=unsafe-buffer-usage -Wno-error=#warnings @($args)'

# Custom Binary
aliases['zzb']  = 'cl ; ./bin/.zig/zig build-exe -freference-trace --cache-dir ./bin/.cache/zig --global-cache-dir ./bin/.cache/zig @($args)'
aliases['zzt']  = 'cl ; ./bin/.zig/zig test -femit-bin=./bin/tests --cache-dir ./bin/.cache/zig --global-cache-dir ./bin/.cache/zig @($args)'
aliases['zzr']  = 'cl ; ./bin/.zig/zig run  -femit-bin=./bin/run   --cache-dir ./bin/.cache/zig --global-cache-dir ./bin/.cache/zig @($args)'
