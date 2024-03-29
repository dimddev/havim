" ***********************************************************************************
" Transparent editing of GnuPG-encrypted files
" Written by Patrick R. McDonald at https://www.antagonism.org/privacy/gpg-vi.shtml
" Based on a solution by Wouter Hanegraaff
augroup encrypted
  au!

  " First make sure nothing is written to ~/.viminfo while editing
  " an encrypted file.
  autocmd BufReadPre,FileReadPre     *.gpg,*.asc set viminfo=
  " We don't want a swap file, as it writes unencrypted data to disk.
  autocmd BufReadPre,FileReadPre     *.gpg,*.asc set noswapfile
  " Switch to binary mode to read the encrypted file.
  autocmd BufReadPre,FileReadPre     *.gpg       set bin
  autocmd BufReadPre,FileReadPre     *.gpg,*.asc let ch_save = &ch|set ch=2
  autocmd BufReadPost,FileReadPost   *.gpg,*.asc '[,']!sh -c 'gpg --decrypt 2> /dev/null'
  " Switch to normal mode for editing
  autocmd BufReadPost,FileReadPost   *.gpg       set nobin
  autocmd BufReadPost,FileReadPost   *.gpg,*.asc let &ch = ch_save|unlet ch_save
  autocmd BufReadPost,FileReadPost   *.gpg,*.asc execute ":doautocmd BufReadPost " . expand("%:r")

  " Convert all text to encrypted text before writing
  autocmd BufWritePre,FileWritePre   *.gpg set bin
  autocmd BufWritePre,FileWritePre   *.gpg '[,']!sh -c 'gpg --default-recipient-self -e 2>/dev/null'
  autocmd BufWritePre,FileWritePre   *.asc '[,']!sh -c 'gpg --default-recipient-self -e -a 2>/dev/null'
  " Undo the encryption so we are back in the normal text, directly
  " after the file has been written.
  autocmd BufWritePost,FileWritePost *.gpg,*.asc u
augroup END

