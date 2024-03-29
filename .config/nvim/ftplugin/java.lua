local bundles = {
    vim.fn.glob(os.getenv("HOME") .. "/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar", 1),
}

vim.list_extend(
    bundles,
    vim.split(vim.fn.glob(os.getenv("HOME") .. "/vscode-java-test/server/*.jar", 1), "\n")
)

local config = {
    root_dir = vim.fs.dirname(vim.fs.find({'.gradlew', '.git', 'mvnw'}, { upward = true })[1]),

    cmd = {
        -- 💀
        "java",
        "-Declipse.application=org.eclipse.jdt.ls.core.id1",
        "-Dosgi.bundles.defaultStartLevel=4",
        "-Declipse.product=org.eclipse.jdt.ls.core.product",
        "-Dlog.protocol=true",
        "-Dlog.level=ALL",
        "-javaagent:" .. os.getenv("HOME") .. "/.local/share/nvim/mason/packages/jdtls/lombok.jar",
        "-Xms1g",
        "--add-modules=ALL-SYSTEM",
        "--add-opens",
        "java.base/java.util=ALL-UNNAMED",
        "--add-opens",
        "java.base/java.lang=ALL-UNNAMED",

        -- 💀
        "-jar",
        os.getenv("HOME") .. "/.local/share/nvim/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar",
        "-configuration",
        os.getenv("HOME") .. "/.local/share/nvim/mason/packages/jdtls/config_linux",
        "-data",
        os.getenv("HOME") .. "/jdtls_workspace/" .. vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t"),
    },

    -- capabilities = vim.lsp.protocol.make_client_capabilities(),

    on_attach = function()
        vim.lsp.codelens.refresh()
        require("jdtls").setup_dap({ hotcodereplace = "auto" })
        require("jdtls.dap").setup_dap_main_classsconfigs()
    end,

    init_options = {
        bundles = bundles,
        extendedClientCapabilities = {
            classFileContentsSupport = true,
            resolveAdditionalTextEditsSupport = true
        };
    },

    settings = {
        java = {
            eclipse = {
                downloadSources = true,
            };
            configuration = {
                updateBuildConfiguration = "interactive",
            };
            maven = {
                downloadSources = true,
            };
            implementationsCodeLens = {
                enabled = true,
            };
            referencesCodeLens = {
                enabled = true,
            };
            references = {
                includeDecompiledSources = true,
            };
            inlayHints = {
                parameterNames = {
                    enabled = "all", -- literals, all, none
                },
            };
            format = {
                enabled = true,
                settings = {
                    url = "https://bitbucket.org/gangsplit/ide-settings/raw/master/eclipse-java-google-style.xml",
                }
            };
            signatureHelp = { enabled = true };
            completion = {
                favoriteStaticMembers = {
                    "org.hamcrest.MatcherAssert.assertThat",
                    "org.hamcrest.Matchers.*",
                    "org.hamcrest.CoreMatchers.*",
                    "org.junit.jupiter.api.Assertions.*",
                    "java.util.Objects.requireNonNull",
                    "java.util.Objects.requireNonNullElse",
                    "org.mockito.Mockito.*",
                },
                importOrder = {
                    "",
                    "java",
                    "javax",
                    "#"
                },
            };
            -- contentProvider = { preferred = "fernflower" },
            sources = {
                organizeImports = {
                    starThreshold = 9999,
                    staticStarThreshold = 9999,
                },
            };
            codeGeneration = {
                toString = {
                    template = "${object.className}{${member.name()}=${member.value}, ${otherMembers}}",
                },
                useBlocks = true,
            };
        },
    },

    flags = {
        allow_incremental_sync = true,
    },

}
require('jdtls').start_or_attach(config)
