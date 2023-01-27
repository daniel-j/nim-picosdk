{.push header: "pico/rand.h".}

type
  Rng128* {.importc: "rng_128_t".} = object
    ## We provide a maximum of 128 bits entropy in one go
    r* {.importc: "r".}: array[2, uint64]


proc getRand128*(rand128: var Rng128) {.importc: "get_rand_128".}
  ## ! \brief Get 128-bit random number
  ##   \ingroup pico_rand
  ## 
  ##  \param rand128  Pointer to storage to accept a 128-bit random number
  ## 

proc getRand64*(): uint64 {.importc: "get_rand_64".}
  ## ! \brief Get 64-bit random number
  ##   \ingroup pico_rand
  ## 
  ##  \return 64-bit random number

proc getRand32*(): uint32 {.importc: "get_rand_32".}
  ## ! \brief Get 32-bit random number
  ##   \ingroup pico_rand
  ## 
  ##  \return 32-bit random number

{.pop.}
