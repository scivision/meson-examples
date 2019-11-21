project('mpi', 'fortran')

fc = meson.get_compiler('fortran')

mpi = dependency('mpi', language: 'fortran')

ref = files('helloworld.f90')

fc.links(ref, dependencies: mpi, name: 'MPI')
fc.run(ref, dependencies: mpi, name: 'MPI')

mpivers = executable('mpivers', 'mpivers.f90', dependencies: mpi)
test('mpi version', mpivers, timeout: 10)

mpihello = executable('mpihello', ref, dependencies: mpi)
test('hello MPI', mpihello, timeout: 10)