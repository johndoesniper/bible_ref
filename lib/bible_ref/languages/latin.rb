# -*- coding: utf-8 -*-
require_relative 'base'

module BibleRef
  module Languages
    class Latin < Base
      # Is it a single chapter book?
      def has_single_chapter?(reference)
        matches = ['Abdias', 'ad Philemonem', 'Joannis II', 'Joannis III', 'Judæ']
        return matches.any? { |e| reference.include?(e)  }
      end

      def books
        {
					'GEN' => { match: /^gen/,					name: 'Genesis'                },
					'EXO' => { match: /^exo/,					name: 'Exodus'                 },
					'LEV' => { match: /^lev/,					name: 'Leviticus'              },
					'NUM' => { match: /^num/,					name: 'Numeri'                 },
					'DEU' => { match: /^deu/,					name: 'Deuteronomium'          },
					'JOS' => { match: /^jos/,					name: 'Josue'                  },
					'JDG' => { match: /^jud/,					name: 'Judicum'                },
					'RUT' => { match: /^rut/,					name: 'Ruth'                   },
					'1SA' => { match: /^reg i|1/,			name: 'Regum I'                },
					'2SA' => { match: /^reg ii|2/,		name: 'Regum II'               },
					'1KI' => { match: /^reg iii|3/,		name: 'Regum III'              },
					'2KI' => { match: /^reg iv|4/,		name: 'Regum IV'               },
					'1CH' => { match: /^par i|1/,			name: 'Paralipomenon I'        },
					'2CH' => { match: /^par ii|2/,		name: 'Paralipomenon II'       },
					'EZR' => { match: /^esd/,					name: 'Esdræ'                  },
					'NEH' => { match: /^neh/,					name: 'Nehemiæ'                },
					'EST' => { match: /^tob/,					name: 'Tobiæ'                  },
					'JOB' => { match: /^job/,					name: 'Job'                    },
					'PSA' => { match: /^psa/,					name: 'Psalmi'                 },
					'PRO' => { match: /^pro/,					name: 'Proverbia'              },
					'ECC' => { match: /^ecc/,					name: 'Ecclesiastes'           },
					'SNG' => { match: /^can/,					name: 'Canticum Canticorum'    },
					'ISA' => { match: /^isa/,					name: 'Isaias'                 },
					'JER' => { match: /^jer/,					name: 'Jeremias'               },
					'LAM' => { match: /^lam/,					name: 'Lamentationes'          },
					'EZK' => { match: /^eze/,					name: 'Ezechiel'               },
					'DAN' => { match: /^dan/,					name: 'Daniel'                 },
					'HOS' => { match: /^ose/,					name: 'Osee'                   },
					'JOL' => { match: /^jo[eë]/,			name: 'Joël'                   },
					'AMO' => { match: /^amo/,					name: 'Amos'                   },
					'OBA' => { match: /^abd/,					name: 'Abdias'                 },
					'JON' => { match: /^jon/,					name: 'Jonas'                  },
					'MIC' => { match: /^mic/,					name: 'Michæa'                 },
					'NAM' => { match: /^nah/,					name: 'Nahum'                  },
					'HAB' => { match: /^hab/,					name: 'Habacuc'                },
					'ZEP' => { match: /^sop/,					name: 'Sophonias'              },
					'HAG' => { match: /^agg/,					name: 'Aggæus'                 },
					'ZEC' => { match: /^zac/,					name: 'Zacharias'              },
					'MAL' => { match: /^mal/,					name: 'Malachias'              },
					'MAT' => { match: /^mat/,					name: 'Matthæus'               },
					'MRK' => { match: /^mar/,					name: 'Marcus'                 },
					'LUK' => { match: /^luc/,					name: 'Lucas'                  },
					'JHN' => { match: /^joa/,					name: 'Joannes'                },
					'ACT' => { match: /^act/,					name: 'Actus Apostolorum'      },
					'ROM' => { match: /^rom/,					name: 'ad Romanos'             },
					'1CO' => { match: /^cor i|1/,			name: 'ad Corinthios I'        },
					'2CO' => { match: /^cor ii|2/,		name: 'ad Corinthios II'       },
					'GAL' => { match: /^gal/,					name: 'ad Galatas'             },
					'EPH' => { match: /^eph/,					name: 'ad Ephesios'            },
					'PHP' => { match: /^phi/,					name: 'ad Philippenses'        },
					'COL' => { match: /^col/,					name: 'ad Colossenses'         },
					'1TH' => { match: /^the i|1/,			name: 'ad Thessalonicenses I'  },
					'2TH' => { match: /^the ii|2/,		name: 'ad Thessalonicenses II' },
					'1TI' => { match: /^tim i|1/,			name: 'ad Timotheum I'         },
					'2TI' => { match: /^tim ii|2/,		name: 'ad Timotheum II'        },
					'TIT' => { match: /^tit/,					name: 'ad Titum'               },
					'PHM' => { match: /^phi/,					name: 'ad Philemonem'          },
					'HEB' => { match: /^heb/,					name: 'ad Hebræos'             },
					'JAS' => { match: /^jac/,					name: 'Jacobi'                 },
					'1PE' => { match: /^pet i|1/,			name: 'Petri I'                },
					'2PE' => { match: /^pet ii|2/,		name: 'Petri II'               },
					'1JN' => { match: /^joa i|1/,			name: 'Joannis I'              },
					'2JN' => { match: /^joa ii|2/,		name: 'Joannis II'             },
					'3JN' => { match: /^joa iii|3/,		name: 'Joannis III'            },
					'JUD' => { match: /^jud/,					name: 'Judæ'                   },
					'REV' => { match: /^apo/,					name: 'Apocalypsis'            }
        }
      end
    end
  end
end
