" Vim syntax file
" Language:         VIMperator configuration file
" Author:           Doug Kearns <dougkearns@gmail.com>
" Maintainer:       timss <timsateroy@gmail.com>
" Last Change:      2016 March 18

" TODO: make this vimperator specific - shared liberator config?

if exists("b:current_syntax")
    finish
endif

let s:cpo_save = &cpo
set cpo&vim

syn include @javascriptTop syntax/javascript.vim
unlet b:current_syntax

syn include @cssTop syntax/css.vim
unlet b:current_syntax

syn match vimperatorCommandStart "\%(^\s*:\=\)\@<=" nextgroup=vimperatorCommand,vimperatorAutoCmd

syn keyword vimperatorCommand ab[breviate] ab[clear] addo[ns] bN[ext] b[uffer] ba[ck] bd[elete] beep bf[irst] bl[ast] bma[rk]
    \ bmarks bn[ext] bp[revious] br[ewind] bufd[o] buffers bun[load] bw[ipeout] ca[bbrev] cabc[lear] cd chd[ir] cm[ap] cmapc[lear]
    \ cno[remap] colo[rscheme] com[mand] comc[lear] cu[nmap] cuna[bbrev] delbm[arks] delc[ommand] delm[arks] delmac[ros]
    \ delqm[arks] dels[tyle] dia[log] dl do[autocmd] doautoa[ll] downl[oads] ec[ho] echoe[rr] echom[sg] em[enu] exe[cute]
    \ exta[dd] extd[isable] extde[lete] exte[nable] extens[ions] exto[ptions] extp[references] files fini[sh] fo[rward]
    \ frameo[nly] fw h[elp] helpa[ll] ha[rdcopy] hi[ghlight] hist[ory] hs ia[bbrev] iabc[lear] ignorekeys im[ap] imapc[lear]
    \ ino[remap] iu[nmap] iuna[bbrev] javas[cript] js ju[mps] keepa[lt] let loadplugins lpl ls ma[rk] macros map mapc[lear] marks
    \ mes[sages] messc[lear] mkv[imperatorrc] nm[ap] nmapc[lear] nno[remap] no[remap] noh[lsearch] norm[al] nu[nmap] o[pen]
    \ pa[geinfo] pagest[yle] pas pl[ay] pref[erences] prefs pw[d] q[uit] qa[ll] qma[rk] qmarks quita[ll] re[draw] re[load]
    \ reloada[ll] res[tart] run runt[ime] sa[nitize] sav[eas] sb[ar] sb[open] sbcl[ose] scrip[tnames] se[t] setg[lobal] setl[ocal]
    \ sideb[ar] sil[ent] so[urce] st[op] stopa[ll] sty[le] styd[isable] styled[isable] stye[nable] stylee[nable] styt[oggle]
    \ stylet[oggle] tN[ext] t[open] tab taba[ttach] tabN[ext] tabc[lose] tabd[o] tabde[tach] tabdu[plicate] tabfir[st] tabl[ast]
    \ tabm[ove] tabn[ext] tabnew tabo[nly] tabopen tabp[revious] tabr[ewind] tabs time tn[ext] tp[revious] u[ndo] una[bbreviate]
    \ undoa[ll] unl[et] unm[ap] us[age] verb[ose] ve[rsion] vie[wsource] vm[ap] vmap[clear] vno[remap] vu[nmap] w[rite] wc[lose]
    \ win[open] winc[lose] wind[ow] winon[ly] wo[pen] wq wqa[ll] xa[ll] zo[om]
    \ contained

syn match vimperatorCommand "!" contained

syn keyword vimperatorAutoCmd au[tocmd] contained nextgroup=vimperatorAutoEventList skipwhite

syn keyword vimperatorAutoEvent BookmarkAdd ColorSheme DOMLoad DownloadPost Fullscreen LocationChange PageLoadPre PageLoad
    \ PrivateMode Sanitize ShellCmdPost VimperatorEnter VimperatorLeavePre VimperatorLeave
    \ contained

syn match vimperatorAutoEventList "\(\a\+,\)*\a\+" contained contains=vimperatorAutoEvent

syn region vimperatorSet matchgroup=vimperatorCommand start="\%(^\s*:\=\)\@<=\<\%(setl\%[ocal]\|setg\%[lobal]\|set\=\)\=\>"
    \ end="$" keepend oneline contains=vimperatorOption,vimperatorString

" string/number options
syn keyword vimperatorOption ac act activate autocomplete cd cdpath complete cpt defsearch ds editor eht ei enc
    \ encoding eventignore extendedhinttags fenc fh fileencoding followhints go gui hc helpfile hf hi hin hintchars
    \ hintinputs hintmatching hinttags hinttimeout history hm ht hto maxitems messages messagetimeout msgs mto newtab nextpattern
    \ pa pageinfo passthrough popups pps previouspattern rtp runtimepath sanitizeitems sanitizetimespan scr scroll sh shcf shell
    \ shellcmdflag showstatuslinks si slv smallicons stal status statuslinevisibility sts suggestengines tabnumbers titlestring
    \ tn toolbars urlseparator vbs verbose wildmode wim wordseparators wsp yankencodedurl
    \ contained nextgroup=vimperatorSetMod

" toggle options
syn match vimperatorOption "\<\%(no\|inv\)\=\%(animations\|ani\|apptab\|app\|autocomplete\|ac\|errorbells\|eb\|exrc\|ex\)\>!\="
    \ contained nextgroup=vimperatorSetMod
syn match vimperatorOption "\<\%(no\|inv\)\=\%(focuscontent\|fc\|fullscreen\|fs\|hlsearch\|hls\|ignorecase\|ic\)\>!\="
    \ contained nextgroup=vimperatorSetMod
syn match vimperatorOption "\<\%(no\|inv\)\=\%(incsearch\|is\ insertmode\|im\|linksearch\|lks\|loadplugins\|lpl\|online\)\>!\="
    \ contained nextgroup=vimperatorSetMod
syn match vimperatorOption "\<\%(no\|inv\)\=\%(passthrough\|scrollbars\|sb\|showmode\|smd\|smallicons\|si\|smartcase\|scs\)\>!\="
    \ contained nextgroup=vimperatorSetMod
syn match vimperatorOption "\<\%(no\|inv\)\=\%(tabnumbers\|tn\|usermode\|um\|visualbell\|vb\|yankencodedurl\)\>!\="
    \ contained nextgroup=vimperatorSetMod

syn match vimperatorSetMod "\%(\<[a-z_]\+\)\@<=&" contained

syn region vimperatorJavaScript start="\%(^\s*:\=\%(au\%(tocmd\)\=\s\+.\+\s\+-\=\)\=\%(javascript\|js\)\s\+\)\@<=" end="$" contains=@javascriptTop keepend oneline
syn region vimperatorJavaScript matchgroup=vimperatorJavascriptDelimiter
    \ start="\%(^\s*:\=\%(au\%(tocmd\)\=\s\+.\+\s\+-\=\)\=\%(javascript\|js\)\s*\)\@<=<<\s*\z(\h\w*\)"hs=s+2 end="^\z1$" contains=@javascriptTop fold

let s:cssRegionStart = '\%(^\s*sty\%[le]!\=\s\+\%(-\%(n\|name\)\%(\s\+\|=\)\S\+\s\+\)\=[^-]\S\+\s\+\)\@<='
execute 'syn region vimperatorCss start="' . s:cssRegionStart . '" end="$" contains=@cssTop keepend oneline'
execute 'syn region vimperatorCss matchgroup=vimperatorCssDelimiter'
    \ 'start="' . s:cssRegionStart . '<<\s*\z(\h\w*\)"hs=s+2 end="^\z1$" contains=@cssTop fold'

syn match vimperatorNotation "<[0-9A-Za-z-]\+>"

syn match   vimperatorComment +".*$+ contains=vimperatorTodo,@Spell
syn keyword vimperatorTodo FIXME NOTE TODO XXX contained

syn region vimperatorString start="\z(["']\)" end="\z1" skip="\\\\\|\\\z1" oneline

syn match   vimperatorLineComment +^\s*".*$+ contains=vimperatorTodo,@Spell

" NOTE: match vim.vim highlighting group names
hi def link vimperatorAutoCmd               vimperatorCommand
hi def link vimperatorAutoEvent             Type
hi def link vimperatorCommand               Statement
hi def link vimperatorComment               Comment
hi def link vimperatorJavascriptDelimiter   Delimiter
hi def link vimperatorCssDelimiter          Delimiter
hi def link vimperatorNotation              Special
hi def link vimperatorLineComment           Comment
hi def link vimperatorOption                PreProc
hi def link vimperatorSetMod                vimperatorOption
hi def link vimperatorString                String
hi def link vimperatorTodo                  Todo

let b:current_syntax = "vimperator"

let &cpo = s:cpo_save
unlet s:cpo_save

" vim: tw=130 et ts=4 sw=4:
