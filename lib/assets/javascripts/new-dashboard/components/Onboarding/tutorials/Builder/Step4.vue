<template>
  <div class="u-width--100 u-pr--10 u-pl--10">
    <StepTitle :title="$t(`Wizards.builder.sections.summary`)">
      <template slot="icon">
          <img svg-inline src="../../../../assets/icons/onboarding/summary.svg"/>
      </template>
    </StepTitle>
    <p v-html="$t(`Wizards.builder.step4.summary.text`)" class="text is-body u-mb--64"></p>

    <StepTitle :title="$t(`Wizards.builder.sections.howto`)">
      <template slot="icon">
          <img svg-inline src="../../../../assets/icons/onboarding/howto.svg"/>
      </template>
    </StepTitle>
    <ol class="u-list__style--decimal u-list__position--inside">
      <li class="u-mt--24">
        <p v-html="$t(`Wizards.builder.step4.howto.instruction1`)" class="text is-caption u-inline"></p>
      </li>
      <li class="u-mt--24">
        <p v-html="$t(`Wizards.builder.step4.howto.instruction2`)" class="text is-caption u-inline"></p>
        <img class="u-width--100 u-mt--16" src="../../../../assets/images/onboarding/builder_step4@2x.png" alt="Screenshot map in builder">
      </li>
      <li class="u-mt--24">
        <p v-html="$t(`Wizards.builder.step4.howto.instruction3`)" class="text is-caption u-inline"></p>
      </li>
      <li class="u-mt--24">
        <p v-html="$t(`Wizards.builder.step4.howto.instruction4`)" class="text is-caption u-inline"></p>
        <img class="u-width--100 u-mt--16" src="../../../../assets/images/onboarding/builder_step4b@2x.png" alt="Screenshot styled map in builder">
      </li>
    </ol>

    <StepTitle :title="$t(`Wizards.builder.sections.extras`)" class="u-mt--64">
      <template slot="icon">
          <img svg-inline src="../../../../assets/icons/onboarding/extras.svg"/>
      </template>
    </StepTitle>
    <p v-html="$t(`Wizards.builder.step4.extras.resource1`)" class="text is-caption"></p>
  </div>
</template>

<script>
import StepTitle from 'new-dashboard/components/Onboarding/components/StepTitle.vue';

export default {
  name: 'Step4',
  stepName: 'Create a map',
  components: {
    StepTitle
  }
};
</script>
