{
  keymaps = [
    # Clear highlights on search when pressing <Esc> in normal mode
    {
      key = "<Esc>";
      action = "<cmd>nohlsearch<CR>";
      mode = ["n"];
    }
    # Diagnostic keymaps:
    {
      key = "<leader>q";
      action = {
        __raw = "vim.diagnostic.setloclist";
      };
      mode = ["n"];
    }
    # Disable arrow keys in normal mode
    {
      key = "<left>";
      action = "<cmd>echo 'Use h to move!'<CR>";
      mode = ["n"];
    }
    {
      key = "<right>";
      action = "<cmd>echo 'Use l to move!'<CR>";
      mode = ["n"];
    }
    {
      key = "<up>";
      action = "<cmd>echo 'Use k to move!'<CR>";
      mode = ["n"];
    }
    {
      key = "<down>";
      action = "<cmd>echo 'Use j to move!'<CR>";
      mode = ["n"];
    }
    #neorg
    {
      key = "<leader>gO";
      action = "<cmd>Neorg toc<CR>";
      mode = ["n"];
    }
  ];
}
