# -*- coding: utf-8 -*-
require_relative 'base'

module BibleRef
  module Languages
    class Portuguese < Base

      # Is it a single chapter book?
      def has_single_chapter?(reference)
          matches = [/^ob/, /^jud/, /^2 jo/, /^3 jo/, /^fil/]
          return Regexp.union(matches).match?(reference.downcase)
      end

      def books
        {
          'GEN' => { match: /^g[eê]n/,          name: 'Gênesis'           },
          'EXO' => { match: /^[eê]x/,           name: 'Êxodo'             },
          'LEV' => { match: /^le?v/,            name: 'Levítico'          },
          'NUM' => { match: /^n[uú]/,           name: 'Números'           },
          'DEU' => { match: /^de?ut/,           name: 'Deuteronômio'      },
          'JOS' => { match: /^jos/,             name: 'Josué'             },
          'JDG' => { match: /^ju/,              name: 'Juízes'            },
          'RUT' => { match: /^ru/,              name: 'Rute'              },
          '1SA' => { match: /^1 sa?m/,          name: '1 Samuel'          },
          '2SA' => { match: /^2 sa?m/,          name: '2 Samuel'          },
          '1KI' => { match: /^1 r/,             name: '1 Reis'            },
          '2KI' => { match: /^2 r/,             name: '2 Reis'            },
          '1CH' => { match: /^1 cr/,            name: '1 Crônicas'        },
          '2CH' => { match: /^2 cr/,            name: '2 Crônicas'        },
          'EZR' => { match: /^esd/,             name: 'Esdras'            },
          'NEH' => { match: /^ne/,              name: 'Neemias'           },
          'EST' => { match: /^est/,             name: 'Ester'             },
          'JOB' => { match: /^j[oó]$/,          name: 'Jó'                },
          'PSA' => { match: /^sal/,             name: 'Salmos'            },
          'PRO' => { match: /^pro?v/,           name: 'Provérbios'        },
          'ECC' => { match: /^ecl/,             name: 'Eclesiastes'       },
          'SNG' => { match: /^c[aâ]n$/,         name: 'Cânticos'          },
          'ISA' => { match: /^isa/,             name: 'Isaías'            },
          'JER' => { match: /^jer/,             name: 'Jeremias'          },
          'LAM' => { match: /^lam/,             name: 'Lamentações'       },
          'EZK' => { match: /^ez/,              name: 'Ezequiel'          },
          'DAN' => { match: /^dan/,             name: 'Daniel'            },
          'HOS' => { match: /^os/,              name: 'Oséias'            },
          'JOL' => { match: /^joel/,            name: 'Joel'              },
          'AMO' => { match: /^am[oó]/,          name: 'Amós'              },
          'OBA' => { match: /^ob/,              name: 'Obadias'           },
          'JON' => { match: /^jona/,            name: 'Jonas'             },
          'MIC' => { match: /^mi/,              name: 'Miquéias'          },
          'NAM' => { match: /^nau/,             name: 'Naum'              },
          'HAB' => { match: /^hab/,             name: 'Habacuque'         },
          'ZEP' => { match: /^sof/,             name: 'Sofonias'          },
          'HAG' => { match: /^ag/,              name: 'Ageu'              },
          'ZEC' => { match: /^zac/,             name: 'Zacarias'          },
          'MAL' => { match: /^mal/,             name: 'Malaquias'         },
          'MAT' => { match: /^mat/,             name: 'Mateus'            },
          'MRK' => { match: /^(mar|mk)/,        name: 'Marcos'            },
          'LUK' => { match: /^lu/,              name: 'Lucas'             },
          'JHN' => { match: /^jo[aã]/,          name: 'João'              },
          'ACT' => { match: /^at/,              name: 'Atos'              },
          'ROM' => { match: /^rom/,             name: 'Romanos'           },
          '1CO' => { match: /^1 cor/,           name: '1 Coríntios'       },
          '2CO' => { match: /^2 cor/,           name: '2 Coríntios'       },
          'GAL' => { match: /^g[aá]l/,          name: 'Gálatas'           },
          'EPH' => { match: /^ef[eé]/,          name: 'Efésios'           },
          'PHP' => { match: /^fil/,             name: 'Filipenses'        },
          'COL' => { match: /^col/,             name: 'Colossenses'       },
          '1TH' => { match: /^1 te?s/,          name: '1 Tessalonicenses' },
          '2TH' => { match: /^2 te?s/,          name: '2 Tessalonicenses' },
          '1TI' => { match: /^1 tim/,           name: '1 Timóteo'         },
          '2TI' => { match: /^2 tim/,           name: '2 Timóteo'         },
          'TIT' => { match: /^tit/,             name: 'Tito'              },
          'PHM' => { match: /^fil/,             name: 'Filemom'           },
          'HEB' => { match: /^heb/,             name: 'Hebreus'           },
          'JAS' => { match: /^tia/,             name: 'Tiago'             },
          '1PE' => { match: /^1 ped/,           name: '1 Pedro'           },
          '2PE' => { match: /^2 ped/,           name: '2 Pedro'           },
          '1JN' => { match: /^1 jo/,            name: '1 João'            },
          '2JN' => { match: /^2 jo/,            name: '2 João'            },
          '3JN' => { match: /^3 jo/,            name: '3 João'            },
          'JUD' => { match: /^jud/,             name: 'Judas'             },
          'REV' => { match: /^apo/,             name: 'Apocalipse'        }
        }
      end
    end
  end
end
