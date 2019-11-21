project('hdf5', 'fortran',
  default_options: ['warning_level=0'])

hdf5 = dependency('hdf5', language: 'fortran')

stest = executable('stest', 'test.f90',
 dependencies : hdf5)
test('HDF5',  stest,
  timeout: 30)
