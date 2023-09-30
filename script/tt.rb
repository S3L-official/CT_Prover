EXEMPTION_LIST = [
    '\$alloc',
    '\$free',
    'boogie_si_',
    'corral_atomic_',
    '__VERIFIER_',
    '__SMACK_(?!static_init)',
    '__memcpy_chk',
    'llvm.dbg',
    'llvm.lifetime',
    'llvm.objectsize',
    'llvm.stacksave',
    'llvm.stackrestore'
  ]
  EXEMPTIONS = /#{EXEMPTION_LIST * "|"}/

  def exempt? decl
    EXEMPTIONS.match(decl) && true
  end

  t = "__SMACK_static_init"

  puts exempt?(t)