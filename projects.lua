BOOK_CODE_PATH = "E:/book-code"
THIRD_PARTY = "E:/book-code/3rdparty"
WORK_PATH = os.getcwd()
includeexternal (BOOK_CODE_PATH .. "/premake-vs-include.lua")




workspace(path.getname(os.realpath(".")))
    language "C++"
    location "build/%{_ACTION}/%{wks.name}"    
    if _ACTION == "vs2015" then
        toolset "v140_xp"
    elseif _ACTION == "vs2013" then
        toolset "v120_xp"
    end

    include (BOOK_CODE_PATH .. "/common.lua")   
    

    group "test"       
        


        create_console_project("test-cpp-utils", "src")
            files
            {
                "%{THIRD_PARTY}/utils/**",    
            }
            includedirs
            {
                "%{THIRD_PARTY}/doctest",                
                "%{THIRD_PARTY}",
            }
            links
            {
                --"gtest",
            }
            
        create_console_project("xcopy", "src")
            files
            {
                --"%{THIRD_PARTY}/utils/**",    
            }
            includedirs
            {
                "%{THIRD_PARTY}/doctest",                
                "%{THIRD_PARTY}",
            }
            links
            {
                --"gtest",
            }

        create_console_project("wscript", "src")
            files
            {
                "src/wscript/ihost.idl"   
            }
            includedirs
            {
                "%{THIRD_PARTY}/doctest",                
                "%{THIRD_PARTY}",
            }
            links
            {
                --"gtest",
            }
            
        create_console_project("test-activescript", "src")
            files
            {
            }
            includedirs
            {
                "%{THIRD_PARTY}/doctest",                
                "%{THIRD_PARTY}",
            }
            links
            {
                --"gtest",
            }

        create_wtl_project("spider", "src")
            files
            {
            }
            includedirs
            {
                "%{THIRD_PARTY}/doctest",                
                "%{THIRD_PARTY}",
            }
            links
            {
                --"gtest",
            }


        