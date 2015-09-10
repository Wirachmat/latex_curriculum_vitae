# latex_curriculum_vitae
# @author Sascha Manns
# @abstract Class for maintaining the version number
#
# Copyright (C) 2015  Sascha Manns <samannsml@directbox.com>
# License: GPL-3

# Method for versioning the gem
class LatexCurriculumVitae
  # @note human readable Version
  # @return [String] STRING (Version)
  module Version
    # Major version. Maybe never reached
    MAJOR = 0
    # Minor version.
    MINOR = 1
    # Patchlevel
    PATCH = 6
    # Buildversion. Mostly 0
    BUILD = 0
    # @note This will be shown by PublicanCreatorsVersion::Version::STRING
    STRING = [MAJOR, MINOR, PATCH].compact.join('.')
  end
end
