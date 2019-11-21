project('coarrays', 'fortran')

fc = meson.get_compiler('fortran')

coarrays = dependency('coarray')
fc.links('sync all; end', dependencies: coarrays, name: 'coarrays')
fc.run('sync all; end', dependencies: coarrays, name: 'coarrays')

exe = executable('coarrays', 'main.f90', dependencies: coarrays)
test('coarrays', exe, timeout: 10)